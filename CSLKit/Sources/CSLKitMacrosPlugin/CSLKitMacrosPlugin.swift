
import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct RustBindingMacro: PeerMacro {
    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        // 1. Ensure the macro is attached to a function declaration.
        guard let funcDecl = declaration.as(FunctionDeclSyntax.self) else {
            throw MacroError.notAttachedToFunction
        }
        
        // 2. Extract the C function name from the macro's arguments.
        // The `node` is now the attribute itself, e.g., `@RustBinding("c_func")`
        guard let cFunctionName = extractCFunctionName(from: node) else {
            throw MacroError.invalidArguments(
                "Expected C function name as first argument"
            )
        }
        
        // 3. Parse the actual Swift function signature from the declaration.
        let swiftFunction = try extractSwiftFunctionSignature(from: funcDecl)
        
        // 4. Analyze the signature to determine the pattern.
        let pattern = analyzePattern(
            swiftFunction: swiftFunction,
            cFunction: cFunctionName
        )
        
        // 5. Generate the implementation.
        let implementation = generateImplementation(
            swiftFunction: swiftFunction,
            cFunction: cFunctionName,
            pattern: pattern
        )
        
        return [implementation]
    }
}

// This function now takes an AttributeSyntax
func extractCFunctionName(from node: AttributeSyntax) -> String? {
    guard case .argumentList(let arguments) = node.arguments,
          let firstArgument = arguments.first?.expression,
          let stringLiteral = firstArgument.as(StringLiteralExprSyntax.self),
          let segment = stringLiteral.segments.first?.as(StringSegmentSyntax.self)
    else {
        return nil
    }
    return segment.content.text
}

func extractSwiftFunctionSignature(
    from funcDecl: FunctionDeclSyntax
) throws -> SwiftFunction {
    var name = funcDecl.name.text
    
    if name.hasPrefix("_") {
        name.removeFirst()
    }
    
    let parameters: [SwiftFunction.Parameter] = funcDecl.signature.parameterClause
        .parameters.map { param in
            let paramName = param.secondName?.text ?? param.firstName.text
            let paramLabel =
            (param.firstName.text != paramName) ? param.firstName.text : nil
            let paramType = param.type.description.trimmingCharacters(
                in: .whitespacesAndNewlines
            )
            return SwiftFunction.Parameter(
                label: paramLabel,
                name: paramName,
                type: paramType
            )
        }
    
    let returnType =
    funcDecl.signature.returnClause?.type.description.trimmingCharacters(
        in: .whitespacesAndNewlines
    ) ?? "Void"
    
    let isThrows = funcDecl.signature.effectSpecifiers?.throwsSpecifier != nil
    
    return SwiftFunction(
        name: name,
        parameters: parameters,
        returnType: returnType,
        isThrows: isThrows
    )
}

// Add this new error case
enum MacroError: Error, CustomStringConvertible {
    case invalidArguments(String)
    case notAttachedToFunction
    
    var description: String {
        switch self {
        case .invalidArguments(let message):
            return "Invalid macro arguments: \(message)"
        case .notAttachedToFunction:
            return "@RustBinding can only be attached to a function declaration."
        }
    }
}

struct SwiftFunction {
    let name: String
    let parameters: [Parameter]
    let returnType: String
    let isThrows: Bool
    
    struct Parameter {
        let label: String?
        let name: String
        let type: String
    }
}

enum FunctionPattern {
    case stringToRPtr
    case dataToRPtr
    case noInputToRPtr
    case rptrToString
    case rptrToData
    case rptrToBool
    case rptrToInt64
    case rptrToInt32
    case rptrToRPtr
    case twoRPtrsToRPtr
    case twoRPtrsToBool
    case twoRPtrsToInt64
    case rptrAndStringToString
    case rptrAndInt64ToRPtr
}

struct Param {
    let name: String
    let type: String
}

struct InputParams {
    let count: Int
    let params: [Param]
}

func analyzePattern(swiftFunction: SwiftFunction, cFunction: String) -> InputParams {
    let paramCount = swiftFunction.parameters.count
    let returnType = swiftFunction.returnType
    
    return InputParams(
        count: paramCount + 2,
        params: swiftFunction.parameters.map { p in
            let pType = if (p.type.contains("OpaqueRustPointer")) {
                // Pointer Type.
                "OpaqueRustPointer"
            } else {
                switch p.type {
                case "String": ""
                case "Bool": ""
                default: "UNKNOWN"
                }
            }
            return Param(name: p.name, type: pType)
        })
}

func generateImplementation(
    swiftFunction: SwiftFunction,
    cFunction: String,
    pattern: InputParams
) -> DeclSyntax {
    
    let helperCall = generateHelperCall(pattern: pattern, cFunction: cFunction, swiftFunction: swiftFunction)
    
    let throwsKeyword = swiftFunction.isThrows ? "throws " : ""
    let tryKeyword = swiftFunction.isThrows ? "try " : ""
    
    let parameterList = swiftFunction.parameters.map { param in
        let label = param.label.map { "\($0) " } ?? ""
        return "\(label)\(param.name): \(param.type)"
    }.joined(separator: ", ")
    
    return """
    public static func \(raw: swiftFunction.name)(\(raw: parameterList)) \(raw: throwsKeyword)-> \(raw: swiftFunction.returnType) {
        \(raw: helperCall)
    }
    """ as DeclSyntax
}

func generateHelperCall(pattern: InputParams, cFunction: String, swiftFunction: SwiftFunction) -> String {
    let params = swiftFunction.parameters
        
    /*
     private static func callRustFunction3<P1, P2, P3, Output>(
            _ function: @escaping (P1, P2, P3, UnsafeMutablePointer<CharPtr?>) -> Bool,
            _ p1: P1,
            _ p2: P2,
            _ p3: P3
        ) throws -> Output {
        var error: CharPtr? = nil
        let success = function(p1, p2, p3, &error)
        return try handleRustResult(success: success, error: error)
     }
     */


    let returnType = swiftFunction.returnType
    let returnTypeSetup = if (returnType.contains("OpaqueRustPointer")) {
        (setup: "var result = RPtr(_0: nil)", return: "return OpaqueRustPointer(cPointer: result)")
    } else {
        switch returnType {
        case "String": (setup: "var result: CharPtr? = nil", return: "return String(cString: result!)")
        case "Bool": (setup: "var result: Bool = false", return: "return result")
        case "Int64": (setup: "var result: Int64 = 0", return: "return result")
        case "Int32": (setup: "var result: Int32 = 0", return: "return result")
        case "Data": (setup: "var result: DataPtr = DataPtr()", return: "return Data(dataPtr: result)")
        default: (setup: "", return: "")
        }
    }

    let setup = params.enumerated().map { (index, p) in
        return if (p.type.contains("OpaqueRustPointer")) {
            "var p\(index) = \(p.name).cPointer"
        } else {
            switch p.type {
            case "String": "var p\(index) = (\(p.name) as NSString).utf8String"
            case "Bool": "var p\(index) = false"
            case "Int64": "var p\(index) = 0"
            case "Int32": "var p\(index) = 0"
            default: ""
            }
        }
    }.joined(separator: "\n")
    
    let paramsString = params.enumerated().map { (index, p) in
        return "p\(index)"
    }.joined(separator: ", ")
    
    return [
        setup, returnTypeSetup.0, "var error: CharPtr? = nil",
        "let success = \(cFunction)(\(paramsString), &result, &error)", 
        "if success {",
        returnTypeSetup.1,
        "} else {",
        "throw createError(from: error) }"
    ].joined(separator: "\n")
    
    /*
     private static func callRustFunction<T>(
         _ function: (UnsafePointer<CChar>?, UnsafeMutablePointer<RPtr>, UnsafeMutablePointer<CharPtr?>) -> Bool,
         input: String
         ) throws -> OpaqueRustPointer<T> {
         let cString = (input as NSString).utf8String
         var rptr = RPtr(_0: nil)
         var error: CharPtr? = nil
         
         let success = function(cString, &rptr, &error)
         
         if success {
            return OpaqueRustPointer(cPointer: rptr)
         } else {
            throw createError(from: error)
         }
     }
     */
    
    
    
    
    //return "return callRustFunction\(params.count + 2)(\(cFunction), \(paramsString))"

}

@main
struct CSLKitMacrosPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        RustBindingMacro.self,
        RustFunctionCallersMacro.self
    ]
}
