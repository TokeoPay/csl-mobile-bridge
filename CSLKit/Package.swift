// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport // 1. Add this import!

let package = Package(
    name: "CSLKit",
    platforms: [.macOS(.v10_15), .iOS(.v13)],
    products: [
        .library(name: "CSLKit", targets: ["CSLKit"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-syntax.git",
            from: "509.0.0"
        ),
    ],
    targets: [
        // Your existing binary and Objective-C targets
        .binaryTarget(
            name: "react_native_haskell_shelley",
            path: "build/react_native_haskell_shelley.artifactbundle"
        ),
        .target(
            name: "CSLKitObjC",
            dependencies: ["react_native_haskell_shelley"],
            publicHeadersPath: "."
        ),
        
        // The main library target
        .target(
            name: "CSLKit",
            dependencies: [
                "CSLKitObjC",
                "CSLKitMacrosPlugin",
                "react_native_haskell_shelley",
            ]
        ),
                
        .macro(
            name: "CSLKitMacrosPlugin",
            dependencies: [
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
            ]
        ),
    
        .testTarget(name: "CSLKitTests", dependencies: ["CSLKit",
                                                        "CSLKitMacrosPlugin",]),
    ]
)
