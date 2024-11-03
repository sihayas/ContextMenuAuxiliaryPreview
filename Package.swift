// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "ContextMenuAuxiliaryPreview",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "ContextMenuAuxiliaryPreview",
            targets: ["ContextMenuAuxiliaryPreview"]
        ),
    ],
    dependencies: [
        .package(
            name: "DGSwiftUtilities",
            path: "../DGSwiftUtilities"
        ),
    ],
    targets: [
        .target(
            name: "ContextMenuAuxiliaryPreview",
            dependencies: [
                "DGSwiftUtilities",
            ],
            path: "Sources",
            linkerSettings: [
                .linkedFramework("UIKit"),
            ]
        ),
    ],
    swiftLanguageVersions: [
        .v5,
    ]
)
