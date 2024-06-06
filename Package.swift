// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.


import PackageDescription

let version = "v5.0.0"
let checksum = "35ef6db3024caae73f16eb22769c09bcdda6543ad00ec1621d09a0bd3200f8ff"

let package = Package(
    name: "OpenCV",
    platforms: [
        .macOS(.v10_13), .iOS(.v11), .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "OpenCV",
            targets: ["opencv2", "opencv2-dependencies"]),
    ],
    targets: [
        .binaryTarget(name: "opencv2",
                      url: "https://github.com/Sameer-fluidtouch/OpenCV/releases/download/\(version)/opencv2.xcframework.zip",
                      checksum: checksum),
        .target(
            name: "opencv2-dependencies",
            exclude: ["Info.plist"],
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreImage"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreVideo", .when(platforms: [.iOS])),
                .linkedFramework("Accelerate", .when(platforms: [.iOS, .macOS])),
                .linkedFramework("OpenCL", .when(platforms: [.macOS])),
                .linkedLibrary("c++")
            ]
        )
    ]
)
