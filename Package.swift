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
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/TDMobRisk_xcframework_v5.3.1.6_a1a9fca_2.zip",
            checksum: "8f277d1d4572d21b93357a242c584495a0fe66ee1638512174cbeae7e113294f"
        ),
        .binaryTarget(
            name: "TDCorePlugin",
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/TDCorePlugin_xcframework_v4.3.7_9ddec2b_2.zip",
            checksum: "8101f545cee5e7915c81f8b7f11a97d6ae977318a04827b32cf4996680cf14f7"
        ),
        .binaryTarget(
            name: "FMDeviceManagerFramework",
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/FMDeviceManagerFramework_xcframework_v5.3.1.6_3847808_2.zip",
            checksum: "02ff2d551ef239425874f440469e3b61fa3cdbba5f3b1978db36ac03ce36156b"
        )
    ]
)
