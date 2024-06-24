// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TQrCode",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TQrCode",
            targets: ["TQrCode"]),
    ],
      dependencies: [
        // Add your Swift packages here
        .package(url: "https://github.com/twostraws/CodeScanner.git", from: "2.5.0"),
        // Add more packages if needed
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TQrCode"),
        .testTarget(
            name: "TQrCodeTests",
            dependencies: ["TQrCode"]),
    ]
)
