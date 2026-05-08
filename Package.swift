// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "FontAwesomeOBJC",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "FontAwesomeOBJC",
            targets: ["FontAwesomeOBJC"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "FontAwesomeOBJC",
            dependencies: [],
            resources: [],
            publicHeadersPath: "include",
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("Foundation"),
                .linkedFramework("CoreGraphics")
            ]
        )
    ]
)
