// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "GPTEncoder",
    products: [
        .library(
            name: "GPTEncoder",
            targets: ["GPTEncoder"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "GPTEncoder",
            resources: [
                .process("Resources")
            ]),
        .testTarget(
            name: "GPTEncoderTests",
            dependencies: ["GPTEncoder"]),
    ]
)
