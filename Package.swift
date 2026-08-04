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
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/TDMobRisk_xcframework_v5.3.1.4_57652fe.zip",
            checksum: "796374247ee0a309cc59f020761617587f05e81879f9902957c8bbe9a20b5113"
        ),
        .binaryTarget(
            name: "TDCorePlugin",
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/TDCorePlugin_xcframework_v4.3.5_ac272e2.zip",
            checksum: "5602ae202a4d69386ea029c0e225c623754c32007c3a81d34caaa62c001d3954"
        ),
        .binaryTarget(
            name: "FMDeviceManagerFramework",
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/FMDeviceManagerFramework_xcframework_v5.3.1.4_73c8adc.zip",
            checksum: "f2db07d197ab75725b2dc1f4aa7079781de6fcb143ccc5cff34d416ddd4ab456"
        )
    ]
)
