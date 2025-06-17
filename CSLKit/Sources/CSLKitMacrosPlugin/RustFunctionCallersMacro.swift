import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct RustFunctionCallersMacro: DeclarationMacro {
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        var declarations: [DeclSyntax] = []
        
        // Generate functions for 3-15 parameters
        for paramCount in 3...15 {
            let funcDecl = try generateRustFunctionCaller(paramCount: paramCount)
            declarations.append(funcDecl)
        }
        
        // Add the result handler function
        declarations.append(generateResultHandler())
        
        return declarations
    }
    
    private static func generateRustFunctionCaller(paramCount: Int) throws -> DeclSyntax {
        // Generate generic parameter list: P1, P2, P3, ..., Output
        let genericParams = (1...paramCount).map { "P\($0)" } + ["Output"]
        let genericClause = "<\(genericParams.joined(separator: ", "))>"
        
        // Generate function parameter list for the Rust function type
        let functionTypeParams = (1...paramCount).map { "P\($0)" } + ["UnsafeMutablePointer<CharPtr?>"]
        let functionType = "(\(functionTypeParams.joined(separator: ", "))) -> Bool"
        
        // Generate parameter declarations: _ p1: P1, _ p2: P2, ...
        let paramDecls = (1...paramCount).map { "_ p\($0): P\($0)" }
        let allParamDecls = ["_ function: @escaping \(functionType)"] + paramDecls
        
        // Generate function call arguments: p1, p2, p3, ..., &error
        let callArgs = (1...paramCount).map { "p\($0)" } + ["&error"]
        
        let funcBody = """
            var error: CharPtr? = nil
            let success = function(\(callArgs.joined(separator: ", ")))
            return try handleRustResult(success: success, error: error)
        """
        
        let functionDeclaration = """
        private static func callRustFunction\(paramCount)\(genericClause)(
            \(allParamDecls.joined(separator: ",\n    "))
        ) throws -> Output {
        \(funcBody)
        }
        """
        
        return DeclSyntax(stringLiteral: functionDeclaration)
    }
    
    private static func generateResultHandler() -> DeclSyntax {
        let handlerDeclaration = """
        private static func handleRustResult<T>(success: Bool, error: CharPtr?) throws -> T {
            if success {
                // This is a placeholder - actual result handling needs to be implemented
                // based on your specific return type patterns
                fatalError("Result handling not implemented - override in specific functions")
            } else {
                throw createError(from: error)
            }
        }
        """
        
        return DeclSyntax(stringLiteral: handlerDeclaration)
    }
}
