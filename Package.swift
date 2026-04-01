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
            targets: [
                "TrustDecisionProSupport",
                "TDMobRisk",
                "FMDeviceManagerFramework",
                "TDCorePlugin"
            ]
        )
    ],
    targets: [
        .target(
            name: "TrustDecisionProSupport",
            path: "Sources/TrustDecisionProSupport",
            linkerSettings: [
                .linkedLibrary("resolv.9")
            ]
        ),
        .binaryTarget(
            name: "TDMobRisk",
            url: "https://static.trustdecision.com/fp-ios/5.2.5.1/spm/TDMobRisk_xcframework_v5.2.5.1_f6ac0f8.zip",
            checksum: "fb263b5260476bff73536e21af5951a0824dc51307ad0a75a09db9c0ab27ad4b"
        ),
        .binaryTarget(
            name: "FMDeviceManagerFramework",
            url: "https://static.trustdecision.com/fp-ios/5.2.5.1/spm/FMDeviceManagerFramework_xcframework_v5.2.5.1_6dfe97d.zip",
            checksum: "77c9c272f6403ae2b187a8aee91a25b7b262683f0119a603ea522134a67ab3d8"
        ),
        .binaryTarget(
            name: "TDCorePlugin",
            url: "https://static.trustdecision.com/fp-ios/5.2.5.1/spm/TDCoreplugin_xcframework_v4.3.3_d6b94fe.zip",
            checksum: "7c5a082be6f501e8941dfe878a2dc6fdbf76f8c90ad62fc8d7f5666f422dfa10"
        )
    ]
)
