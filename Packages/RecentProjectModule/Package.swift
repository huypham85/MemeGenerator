// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RecentProjectModule",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RecentProjectModule",
            targets: ["RecentProjectModule"]),
    ],
    dependencies: [
        .package(path: "../CoreModule"),
        .package(url: "https://github.com/realm/realm-swift.git",exact: "10.54.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "RecentProjectModule",
            dependencies: [
                .product(name: "RealmSwift", package: "realm-swift"),
                "CoreModule"
            ]
        ),
        .testTarget(
            name: "RecentProjectModuleTests",
            dependencies: ["RecentProjectModule"]),
    ]
)
