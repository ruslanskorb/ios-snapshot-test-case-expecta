// swift-tools-version:6.2
import PackageDescription

let package = Package(
    name: "Expecta+Snapshots",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        .library(
            name: "Expecta+Snapshots",
            targets: ["Expecta+Snapshots"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/ruslanskorb/expecta.git", revision: "632427da398110f281577fd89dafc9dd06dc5f71"),
        .package(url: "https://github.com/ruslanskorb/specta.git", revision: "b71ea8df50d5557cebdd3e5a4b334b1564c34c0d"),
        .package(url: "https://github.com/revolut-mobile/ios-snapshot-test-case.git", revision: "d4f03bd80e715b108409d2c215b53e0a8b92d5cc")
    ],
    targets: [
        .target(
            name: "Expecta+Snapshots",
            dependencies: [
                .product(name: "Expecta", package: "Expecta"),
                .product(name: "Specta", package: "Specta"),
                .product(name: "iOSSnapshotTestCase", package: "ios-snapshot-test-case")
            ],
            path: "Source",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("./")
            ]
        )
    ]
)
