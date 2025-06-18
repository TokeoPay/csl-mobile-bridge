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
    targets: [
        .binaryTarget(
            name: "react_native_haskell_shelley",
            url: "https://github.com/TokeoPay/csl-mobile-bridge/raw/refs/heads/main/CSLKit/build/react_native_haskell_shelley.artifactbundle.zip",
            checksum: "7ffd85d845870ab185ec5b6ee4bb799ea5574c49742f6fed671d67a08ff811f4"
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
                "react_native_haskell_shelley",
            ],
            path: "CSLKit/Sources/CSLKit"
        ),
        .testTarget(
            name: "CSLKitTests", 
            dependencies: ["CSLKit"],
            path: "CSLKit/Tests/CSLKitTests"
        ),
    ]
)
