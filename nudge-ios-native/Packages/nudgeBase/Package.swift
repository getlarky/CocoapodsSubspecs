// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "nudgeBase",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "nudgeBase",
            targets: ["nudgeBase"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "EnvironmentUtils",
            path: "Sources/EnvironmentUtils"
        ),
        .target(
            name: "KeyValueStore",
            path: "Sources/KeyValueStore"
        ),
        .target(
            name: "nudgeBase",
            dependencies: ["EnvironmentUtils", "KeyValueStore"],
            path: "Sources/nudgeBase"
        ),
        .testTarget(
            name: "nudgeBaseTests",
            dependencies: ["EnvironmentUtils", "KeyValueStore",  "nudgeBase" ]),
    ],
    swiftLanguageVersions: [.v5]
)
