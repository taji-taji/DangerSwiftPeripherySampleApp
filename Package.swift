// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DangerSwiftPeripherySampleApp",
    platforms: [
        .macOS(.v13),
    ],
    products: [
        .library(name: "DangerSwiftPeripherySampleApp", targets: ["DangerSwiftPeripherySampleApp"]),
        .library(name: "DangerDeps", type: .dynamic, targets: ["DangerDependencies"]), // dev
    ],
    dependencies: [
        // Danger
        .package(url: "https://github.com/danger/swift.git", from: "3.17.0"), // dev
        // Danger Plugins
        .package(url: "https://github.com/taji-taji/DangerSwiftPeriphery.git", branch: "macos13-test"), // dev
    ],
    targets: [
        .target(name: "DangerSwiftPeripherySampleApp"),
        .target(name: "DangerDependencies",
                dependencies: [
                    .product(name: "Danger", package: "swift"),
                    .product(name: "DangerSwiftPeriphery", package: "DangerSwiftPeriphery"),
                ]),
        .testTarget(
            name: "DangerSwiftPeripherySampleAppTests",
            dependencies: ["DangerSwiftPeripherySampleApp"]),
    ]
)
