// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TrustDecisionPro",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "TrustDecisionPro",
            type: .static,
            targets: ["TrustDecisionPro"]
        )
    ],
    targets: [
        .target(
            name: "TrustDecisionPro",
            dependencies: [
                "TDMobRisk",
                "TDCorePlugin",
                "FMDeviceManagerFramework"
            ],
            path: "Sources/TrustDecisionPro",
            linkerSettings: [
                .linkedLibrary("resolv.9")
            ]
        ),
        .binaryTarget(
            name: "TDMobRisk",
            url: "https://static.trustdecision.com/fp-ios/5.3.2/spm/TDMobRisk_xcframework_v5.3.2.2_b70357a.zip",
            checksum: "2652618c58c9d703db2a42af792d32648bdcd95ec1d95d9781c510f9801e2b6d"
        ),
        .binaryTarget(
            name: "TDCorePlugin",
            url: "https://static.trustdecision.com/fp-ios/5.3.2/spm/TDCorePlugin_xcframework_v4.3.7_9ddec2b.zip",
            checksum: "decc8ec1fdc792d024bea011629c84f3bf3db4205c1a9c5ccab934528d40fad5"
        ),
        .binaryTarget(
            name: "FMDeviceManagerFramework",
            url: "https://static.trustdecision.com/fp-ios/5.3.2/spm/FMDeviceManagerFramework_xcframework_v5.3.2.2_fde8b16.zip",
            checksum: "898cb36b14f9c47ca8f0a6d9916814e696dc13f2f4f00ad8992e8e7790392e3c"
        )
    ]
)
