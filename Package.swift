// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "cleanXcode",
    platforms: [.macOS(.v10_15)],
    dependencies: [
        // 📁 John Sundell's Files Package is great for easy file reading/writing/moving/etc.
        .package(url: "https://github.com/JohnSundell/Files", from: "4.0.0"),
        // 🖥 Consler for Styled outputs to the Console
        .package(url: "https://github.com/enuance/consler", from: "0.6.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "cleanXcode",
            dependencies: ["Files", "Consler"],
            path: "Sources/CleanXcode"),
        .testTarget(
            name: "CleanXcodeTests",
            dependencies: ["cleanXcode"]),
    ]
)
