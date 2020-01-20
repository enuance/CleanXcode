// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CleanXcode",
    dependencies: [
        // 📁 John Sundell's Files Package is great for easy file reading/writing/moving/etc.
        .package(url: "https://github.com/JohnSundell/Files", from: "4.0.0"),
        // 🧰 SPMUtilities for CLI Argument Parsing.
        .package(url: "https://github.com/apple/swift-package-manager", from: "0.5.0"),
        // 🖥 Consler for Styled outputs to the Console
        .package(url: "https://github.com/enuance/consler", from: "0.4.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "CleanXcode",
            dependencies: ["Files", "SPMUtility", "Consler"]),
        .testTarget(
            name: "CleanXcodeTests",
            dependencies: ["CleanXcode"]),
    ]
)
