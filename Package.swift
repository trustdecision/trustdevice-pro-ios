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
            url: "https://static.trustdecision.com/fp-ios/5.3.2/spm/TDMobRisk_xcframework_v5.3.2.4_3085ce1.zip",
            checksum: "ec6d11e43ef019b0f3bdb9ddc83d876a85320a364ab08dba6aee9f92a8e0aeea"
        ),
        .binaryTarget(
            name: "TDCorePlugin",
            url: "https://static.trustdecision.com/fp-ios/5.3.2/spm/TDCorePlugin_xcframework_v4.3.7_9ddec2b.zip",
            checksum: "decc8ec1fdc792d024bea011629c84f3bf3db4205c1a9c5ccab934528d40fad5"
        ),
        .binaryTarget(
            name: "FMDeviceManagerFramework",
            url: "https://static.trustdecision.com/fp-ios/5.3.2/spm/FMDeviceManagerFramework_xcframework_v5.3.2.4_3476f75.zip",
            checksum: "caff86bce375558ecfbb7ef62dcce1850a6b2e1cb1d7b79b68676c131bed7f8d"
        )
    ]
)
