// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Fuzi",
    products: [
        .library(
            name: "Fuzi",
            targets: ["Fuzi"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        .target(name: "Fuzi",
            path: "Sources",

            // Headers and linking for libxml2
            swiftSettings:[.unsafeFlags(["-I$SDKROOT/usr/include/libxml2"])],
            linkerSettings: [.linkedLibrary("xml2")]
        ),
        .testTarget(name: "FuziTests",
                    dependencies: ["Fuzi"],
                    path: "Tests"
        )
    ]
)
