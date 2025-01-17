// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FittedSheetsSwiftUI",
    platforms: [
        .iOS(.v13),
        .macOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FittedSheetsSwiftUI",
            targets: ["FittedSheetsSwiftUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/whirr/FittedSheets", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FittedSheetsSwiftUI",
            dependencies: ["FittedSheets"]),
        .testTarget(
            name: "FittedSheetsSwiftUITests",
            dependencies: ["FittedSheets", "FittedSheetsSwiftUI"]),
    ]
)
