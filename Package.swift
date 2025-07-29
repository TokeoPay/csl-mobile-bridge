// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
// This is the Main Package.swift file for the CSLKit library. We need it here as Swift Package Manager is
// not able to locate Swift Packages in a sub directory within the Repo.

import PackageDescription
import CompilerPluginSupport

let version = "0.0.1"

let haskellShelleyBinaryVersionURL = "https://github.com/TokeoPay/csl-mobile-bridge/releases/download/v0.0.1-alpha.5/react_native_haskell_shelley.artifactbundle.zip"
let haskellShelleyBinaryChecksum = "a3d0eb4d1f8796a9a0600db7da8bea6f46c0d0fcd69742d438a6640a12b21040"
let useLocalBinary = false

let package = Package(
    name: "csl-mobile-bridge",
    platforms: [.macOS(.v10_15), .iOS(.v13)],
    products: [
        .library(name: "CSLKit", targets: ["CSLKit"]),
    ],
    targets: [
        useLocalBinary ?
            .binaryTarget(name: "react_native_haskell_shelley_binary", path: "./CSLKit/build/react_native_haskell_shelley.artifactbundle")
        : .binaryTarget(
            name: "react_native_haskell_shelley_binary",
            url: haskellShelleyBinaryVersionURL,
            checksum: haskellShelleyBinaryChecksum
        ),
        .target(
            name: "CSLKitObjC",
            dependencies: ["react_native_haskell_shelley_binary"],
            path: "CSLKit/Sources/CSLKitObjC",
            publicHeadersPath: ".",
        ),
        .target(
            name: "CSLKit",
            dependencies: [
                "CSLKitObjC",
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
