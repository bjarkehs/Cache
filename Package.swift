// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Cache",
    platforms: [
        .macOS(.v10_11),
        .iOS(.v8),
        .tvOS(.v9_2)
    ],
    products: [
        .library(
            name: "Cache",
            targets: ["Cache"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Cache",
            path: "Source/Shared",
            exclude: ["Library/ImageWrapper.swift"]), // relative to the target path
        .testTarget(
            name: "CacheTests",
            dependencies: ["Cache"],
            path: "Tests"),
    ]
)
