// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DangerSwiftPeripherySampleApp",
    products: [
        .library(
            name: "DangerSwiftPeripherySampleApp",
            targets: ["DangerSwiftPeripherySampleApp"]),
    ],
    dependencies: [
        .package(name: "danger-swift", url: "https://github.com/danger/swift.git", from: "3.0.0"),
        .package(name: "DangerSwiftPeriphery", url: "https://github.com/taji-taji/DangerSwiftPeriphery.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "DangerSwiftPeripherySampleApp",
            dependencies: [
                .product(name: "Danger", package: "danger-swift"),
                .product(name: "DangerSwiftPeriphery", package: "DangerSwiftPeriphery")
            ]),
        .testTarget(
            name: "DangerSwiftPeripherySampleAppTests",
            dependencies: ["DangerSwiftPeripherySampleApp"]),
    ]
)
