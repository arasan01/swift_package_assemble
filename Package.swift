// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPM",
    defaultLocalization: "en",
    products: [
        .library(
            name: "SPMDebug",
            targets: ["SPMDebug"]),
        .library(
            name: "SPMRelease",
            targets: ["SPMRelease"])
    ],
    targets: [
        .target(
            name: "SPMDebug",
            dependencies: ["SPM", "AnyResourceDebugGocha"]),
        .target(
            name: "SPMRelease",
            dependencies: ["SPM", "AnyResourceImages", "AnyResourceStrings"]),
        .target(name: "SPM"),
        .testTarget(
            name: "SPMTests",
            dependencies: ["SPM"]),
        .target(
            name: "AnyResourceImages",
            resources: [.process("Resources/")]),
        .target(name: "AnyResourceStrings"),
        .target(
            name: "AnyResourceDebugGocha",
            dependencies: ["AnyResourceImages"]),
    ]
)
