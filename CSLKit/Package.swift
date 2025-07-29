// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

let useLocalBinary = true
let version = "0.1.0"
let haskellShelleyBinaryVersionURL = "https://github.com/TokeoPay/csl-mobile-bridge/releases/download/v0.0.1-alpha.3/react_native_haskell_shelley.artifactbundle.zip"
let haskellShelleyBinaryChecksum = "d4c4c6cf92decbe62bbbebec7a1275807878cf074ffd77346da3c66c2606bd83"


let package = Package(
    name: "CSLKit",
    platforms: [.macOS(.v10_15), .iOS(.v13)],
    products: [
        .library(name: "CSLKit", targets: ["CSLKit"]),
    ],
    targets: [
        // Your existing binary and Objective-C targets
        useLocalBinary ?
            .binaryTarget(name: "react_native_haskell_shelley_binary", path: "./build/react_native_haskell_shelley.artifactbundle")
        : .binaryTarget(
            name: "react_native_haskell_shelley_binary",
            url: haskellShelleyBinaryVersionURL,
            checksum: haskellShelleyBinaryChecksum
        ),
        .target(
            name: "CSLKitObjC",
            dependencies: ["react_native_haskell_shelley_binary"],
            publicHeadersPath: ".",
        ),
        // The main library target
        .target(
            name: "CSLKit",
            dependencies: [
                "CSLKitObjC",
//                "CSLKitMacrosPlugin",
                // "react_native_haskell_shelley",
            ]
        ),
                
//        .macro(
//            name: "CSLKitMacrosPlugin",
//            dependencies: [
//                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
//                .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
//            ]
//        ),
    
        .testTarget(name: "CSLKitTests", dependencies: ["CSLKit"]),
    ]
)
