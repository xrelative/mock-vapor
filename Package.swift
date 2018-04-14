// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Mock-Server",
    dependencies: [
        .package(
            url: "https://github.com/vapor/vapor.git",
            .upToNextMajor(from: "2.4.4")
        ),
        .package(
            url: "https://github.com/vapor/fluent-provider.git",
            .upToNextMajor(from: "1.3.0")
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Mock-Server",
            dependencies: ["Vapor", "FluentProvider"]
        )
    ]
)
