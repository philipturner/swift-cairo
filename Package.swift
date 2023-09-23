// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-cairo",
    products: [
        .library(
            name: "Cairo",
            targets: ["Cairo"]),
        .library(
            name: "SCCCairo",
            targets: ["SCCCairo"]),
        .library(
            name: "SCCFontConfig",
            targets: ["SCCFontConfig"]),
        .library(
            name: "SCCFreeType",
            targets: ["SCCFreeType"]),
    ],
    targets: [
        .target(
            name: "SCCCairo",
            dependencies: []),
        .target(
            name: "SCCFontConfig",
            dependencies: []),
        .target(
            name: "SCCFreeType",
            dependencies: [])
        .target(
            name: "Cairo",
            dependencies: [
                "SCCCairo",
                "SCCFontConfig",
                "SCCFreeType"
            ]
        ),
        .testTarget(
            name: "CairoTests",
            dependencies: [
                "Cairo"
            ]
        ),

    ]
)
