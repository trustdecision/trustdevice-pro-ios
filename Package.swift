// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TrustDecisionPro",
    platforms: [
        .iOS(.v12)
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
            url: "https://static.trustdecision.com/fp-ios/5.2.5.1/spm/TDMobRisk_xcframework_v5.2.5.1_f6ac0f8.zip",
            checksum: "fb263b5260476bff73536e21af5951a0824dc51307ad0a75a09db9c0ab27ad4b"
        ),
        .binaryTarget(
            name: "TDCorePlugin",
            url: "https://static.trustdecision.com/fp-ios/5.2.5.1/spm/TDCorePlugin_xcframework_v4.3.3_d6b94fe.zip",
            checksum: "2a7de44941541b676f017f64ebfacb3933b8646fd019e6b0c7e01d1faa0645f4"
        ),
        .binaryTarget(
            name: "FMDeviceManagerFramework",
            url: "https://static.trustdecision.com/fp-ios/5.2.5.1/spm/FMDeviceManagerFramework_xcframework_v5.2.5.1_6dfe97d.zip",
            checksum: "77c9c272f6403ae2b187a8aee91a25b7b262683f0119a603ea522134a67ab3d8"
        )
    ]
)
