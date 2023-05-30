// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-logger",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftLogger",
            type: .static,
            targets: ["SwiftLogger"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
//      .package(url: "https://github.com/mstfy/spm-to-xcframework", branch: "main"),
//      .package(url: "https://github.com/Alamofire/Alamofire.git", branch: "master"),
//      .package(url: "https://github.com/SwiftKickMobile/SwiftMessages.git", exact: "9.0.6"),
//      .package(url: "https://github.com/SDWebImage/SDWebImage.git", exact: "5.1.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
      .binaryTarget(name: "Alamofire", path: "Build/xcframeworks/Alamofire.xcframework"),
      .binaryTarget(name: "SwiftMessages", path: "Build/xcframeworks/SwiftMessages.xcframework"),
      .binaryTarget(name: "SDWebImage", path: "Build/xcframeworks/SDWebImage.xcframework"),
        .target(
            name: "SwiftLogger",
            dependencies: [
              "Alamofire",
//              "SwiftMessages",
//              "SDWebImage",
//              .product(name: "Alamofire", package: "Alamofire"),
//              .product(name: "SwiftMessages", package: "SwiftMessages"),
//              .product(name: "SDWebImage", package: "SDWebImage"),
            ]),
        .testTarget(
            name: "SwiftLoggerTests",
            dependencies: ["SwiftLogger"]),
    ]
)
