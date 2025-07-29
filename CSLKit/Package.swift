// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

let useLocalBinary = true
let version = "0.1.0"
let haskellShelleyBinaryVersionURL = "https://github.com/TokeoPay/csl-mobile-bridge/releases/download/v0.0.1-alpha.2/react_native_haskell_shelley.artifactbundle.zip"
let haskellShelleyBinaryChecksum = "9f8e61008fc62cba3efe10690284b07cb4747218282fa593481394755a043a27"


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
