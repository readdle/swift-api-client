// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SchedJoulesApi",
    platforms: [.iOS(.v14), .macCatalyst(.v13)],
    products: [
        .library(
            name: "SchedJoulesApi",
            targets: ["SchedJoulesApiClient"]),
    ],
    targets: [
        .target(
            name: "SchedJoulesApiClient",
            path: "ApiClient/Source",
        ),
        .testTarget(
            name: "ApiClientTest",
            dependencies: ["SchedJoulesApiClient"],
            path: "ApiClient/Tests",
            resources: [.copy("Sample JSONs/")]
        ),
    ],
    swiftLanguageModes: [.v5]
)
