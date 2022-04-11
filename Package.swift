// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DangerSwiftPeripherySampleApp",
    products: [
        .library(name: "DangerSwiftPeripherySampleApp", targets: ["DangerSwiftPeripherySampleApp"]),
        .library(name: "DangerDeps", type: .dynamic, targets: ["DangerDependencies"]), // dev
    ],
    dependencies: [
        // Danger
        .package(name: "danger-swift", url: "https://github.com/danger/swift.git", from: "3.0.0"), // dev
        // Danger Plugins
        .package(name: "DangerSwiftPeriphery", url: "https://github.com/taji-taji/DangerSwiftPeriphery.git", branch: "test"), // dev
    ],
    targets: [
        .target(name: "DangerSwiftPeripherySampleApp"),
        .target(name: "DangerDependencies",
                dependencies: [
                    .product(name: "Danger", package: "danger-swift"),
                    "DangerSwiftPeriphery",
                ]),
        .testTarget(
            name: "DangerSwiftPeripherySampleAppTests",
            dependencies: ["DangerSwiftPeripherySampleApp"]),
    ]
)
