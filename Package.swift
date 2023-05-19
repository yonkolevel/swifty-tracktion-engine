// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyTracktionEngine",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftyTracktionEngine",
            targets: ["SwiftyTracktionEngine", "ObjCTacktionEngine",]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftyTracktionEngine",
            dependencies: ["ObjCTacktionEngine"],
            path: "Sources/Swift"
        ),
        .target(
            name: "ObjCTacktionEngine",
            path: "Sources/ObjC",
            cxxSettings: [
//                .define("JUCE_APP_CONFIG_HEADER", to: "\"TracktionEngineWrapper.h\""),
                .define("JUCE_GLOBAL_MODULE_SETTINGS_INCLUDED", to: "1"),
                .headerSearchPath("../CPP/modules/juce/modules"),
                .headerSearchPath("../CPP/modules"),
                .unsafeFlags(["-std=c++17"]),
            ]
        ),
    ]
)
