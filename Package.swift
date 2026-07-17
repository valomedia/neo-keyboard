// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "NeoKeyboardTooling",
    platforms: [
        .macOS(.v12),
    ],
    dependencies: [
        .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins", exact: "0.64.0"),
    ]
)
