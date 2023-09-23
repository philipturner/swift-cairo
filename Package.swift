// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-cairo",
    products: [
        .library(
            name: "Cairo",
            targets: ["Cairo"]),
    ],
    targets: [
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
        .target(
            name: "SCCCairo",
            dependencies: []),
        .systemLibrary(
            name: "SCCFontConfig",
            dependencies: []),
        .systemLibrary(
            name: "SCCFreeType",
            dependencies: [])
    ],
    swiftLanguageVersions: [.v5]
)
