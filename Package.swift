// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "SwiftyTracktionEngine",
    products: [
        .library(
            name: "SwiftyTracktionEngine",
            targets: ["SwiftyTracktionEngine", "ObjCTacktionEngine"]),
    ],
    targets: [
        .target(
            name: "SwiftyTracktionEngine",
            dependencies: ["ObjCTacktionEngine"],
            path: "Sources/Swift"
        ),
        .target(
            name: "ObjCTacktionEngine",
            path: "Sources/ObjC",
            cxxSettings: [
                               .define("JUCE_APP_CONFIG_HEADER", to: "\"TracktionEngineWrapper.h\""),

                .headerSearchPath("../CPP/modules/juce/modules"),
                .headerSearchPath("../CPP/modules"),
                .unsafeFlags(["-std=c++17"]),

                // Conditional compilation settings for Debug and Release
                .define("DEBUG", .when(configuration: .debug)),
                .define("NDEBUG", .when(configuration: .release)),
            ]
        ),
    ]
)
