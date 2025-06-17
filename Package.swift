// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "csl-mobile-bridge",
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
        .binaryTarget(
            name: "react_native_haskell_shelley",
            path: "CSLKit/build/react_native_haskell_shelley.artifactbundle"
        ),
        .target(
            name: "CSLKitObjC",
            dependencies: ["react_native_haskell_shelley"],
            path: "CSLKit/Sources/CSLKitObjC",
            publicHeadersPath: "."
        ),
        .target(
            name: "CSLKit",
            dependencies: [
                "CSLKitObjC",
                "CSLKitMacrosPlugin",
                "react_native_haskell_shelley",
            ],
            path: "CSLKit/Sources/CSLKit"
        ),
        .macro(
            name: "CSLKitMacrosPlugin",
            dependencies: [
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
            ],
            path: "CSLKit/Sources/CSLKitMacrosPlugin"
        ),
        .testTarget(
            name: "CSLKitTests", 
            dependencies: ["CSLKit", "CSLKitMacrosPlugin"],
            path: "CSLKit/Tests/CSLKitTests"
        ),
    ]
)