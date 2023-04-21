// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppBase",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AppBase",
            targets: ["AppBase"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        //
        // Using 'path', we can depend on a local package that's
        // located at a given path relative to our package's folder:
        .package(path: "../nudgeBase"),
//        .package(
//          url: "https://github.com/getlarky/nudgeBase-specs-staging/",
//          exact: "1.2.0-rc1"
//        ),
        .package(path: "../UIViews"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AppBase",
            dependencies: [
                .product(name: "nudgeBase", package: "nudgeBase"),
                .product(name: "UIViews", package: "UIViews"),
            ]
        ),
        .testTarget(
            name: "AppBaseTests",
            dependencies: ["AppBase", "nudgeBase", "UIViews"]),
    ],
    swiftLanguageVersions: [.v5]
)
