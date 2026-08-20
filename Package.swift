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
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/TDMobRisk_xcframework_v5.3.1.5_8c50797.zip",
            checksum: "c7bcbfb251c9251abecf78d371df053bda1b3a10134df5f7dcc8fffb1d0cefb3"
        ),
        .binaryTarget(
            name: "TDCorePlugin",
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/TDCorePlugin_xcframework_v4.3.6_af8c025.zip",
            checksum: "6aab09ad7b8e66a7314162b1744b18ec5e632d59181ece6132516ab7bbb76a74"
        ),
        .binaryTarget(
            name: "FMDeviceManagerFramework",
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/FMDeviceManagerFramework_xcframework_v5.3.1.5_677d88f.zip",
            checksum: "a1c79ce2a5bfb2b552c8c739b583e2be5f81d5289194b8ae83d914ba9e980f2d"
        )
    ]
)
