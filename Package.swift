// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexMapsSpm",
    platforms: [
        // Add support for all platforms starting from a specific version.
        .iOS(.v13),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "YandexMapsSpm",
            targets: ["YandexMapsSpm"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "YandexMapsSpm",
            dependencies: []
        ),
        .testTarget(
            name: "YandexMapsSpmTests",
            dependencies: ["YandexMapsSpm"]
        )
        .binaryTarget(
            name: "YandexMapsSpm",
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.3.1-full.framework.zip",
            checksum: "bc1a2fa1320a2e98103944020f6ff28c4114294c2d4963779d18c2de88527cb1"
        ),
    ]
)
