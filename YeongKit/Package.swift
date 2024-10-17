// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YeongKit",
    platforms: [
        .iOS(.v15), 
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "YeongKit",
            targets: ["SwiftStructures"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "SwiftStructures"),
        
        .testTarget(
            name: "SwiftStructuresTests",
            dependencies: [
                "SwiftStructures"
            ]),
    ]
)
