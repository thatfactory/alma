// swift-tools-version:6.2

import PackageDescription

let package = Package(
    name: "ALMA",
    platforms: [
        .iOS(.v18),
        .macOS(.v15),
        .tvOS(.v18),
        .watchOS(.v11)
    ],
    products: [
        .library(
            name: "ALMA",
            targets: ["ALMA"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/thatfactory/applogger",
            from: "0.1.0"
        ),
        .package(
            url: "https://github.com/thatfactory/cgkstatemachine",
            from: "0.1.0"
        ),
        .package(
            url: "https://github.com/thatfactory/cskscene",
            from: "0.1.0"
        ),
        .package(
            url: "https://github.com/thatfactory/device",
            from: "0.1.0"
        ),
        .package(
            url: "https://github.com/thatfactory/gcoverseer",
            from: "0.1.0"
        )
    ],
    targets: [
        .target(
            name: "ALMA",
            dependencies: [
                .product(
                    name: "AppLogger",
                    package: "applogger"
                ),
                .product(
                    name: "CGKStateMachine",
                    package: "cgkstatemachine"
                ),
                .product(
                    name: "CSKScene",
                    package: "cskscene"
                ),
                .product(
                    name: "Device",
                    package: "device"
                ),
                .product(
                    name: "GCOverseer",
                    package: "gcoverseer"
                )
            ]
        ),
        .testTarget(
            name: "ALMATests",
            dependencies: ["ALMA"]
        )
    ]
)
