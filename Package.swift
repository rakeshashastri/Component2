// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Component2",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Component2",
            targets: ["Component2"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rakeshashastri/Core.git", exact: "0.1.3"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Component2",
            dependencies: ["Core"]),
        .testTarget(
            name: "Component2Tests",
            dependencies: ["Component2"]
        ),
    ]
)
