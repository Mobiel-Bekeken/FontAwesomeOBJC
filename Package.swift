// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "FontAwesome-iOS",
    defaultLocalization: "en",    
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "FontAwesome-iOS",
            targets: ["FontAwesome-iOS"]
        ),
    ],
    dependencies: [
           
    ],
    targets: [
        .target(
            name: "FontAwesome-iOS",
            dependencies: [
                
            ],
            path: "FontAwesome-iOS",
            resources: [
                .copy("Resources/FontAwesome.ttf")
            ],
            publicHeadersPath: ".",
        )
    ]
)
