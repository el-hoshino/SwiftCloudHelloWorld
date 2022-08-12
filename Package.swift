// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftCloudHelloWorld",
    platforms: [
        .macOS(.v10_15),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
            url: "https://github.com/AndrewBarba/swift-compute-runtime",
            from: "1.0.0"
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "SwiftCloudHelloWorld",
            dependencies: [
                .product(name: "Compute", package: "swift-compute-runtime"),
            ]),
        .testTarget(
            name: "SwiftCloudHelloWorldTests",
            dependencies: ["SwiftCloudHelloWorld"]),
    ]
)
