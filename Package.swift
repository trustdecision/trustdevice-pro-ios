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
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/TDMobRisk_xcframework_v5.3.1.1_0b25924_fp.zip",
            checksum: "638968cf11397ef32ee73f7d8c69529522cc5ca4a7ce3628c9abbcdb6bd6cf7d"
        ),
        .binaryTarget(
            name: "TDCorePlugin",
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/TDCorePlugin_xcframework_v4.3.4_18dcfcc_fp.zip",
            checksum: "7c74f81ca81ea92ac01abeefe62ff407c572713d3458e60d9a7c8fc0e67914f8"
        ),
        .binaryTarget(
            name: "FMDeviceManagerFramework",
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/FMDeviceManagerFramework_xcframework_v5.3.1.1_bf97a63_fp.zip",
            checksum: "d88aeb580034281dceb4b51d5a81bedb2bfefeeee9dcdce71d229ad53e3d2075"
        )
    ]
)
