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
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/TDMobRisk_xcframework_v5.3.1.2_dda27d0.zip",
            checksum: "d2a1039ac2da7ed9051ce1af5ad19eaf21a54e11ded917310b41d8c8d3933c25"
        ),
        .binaryTarget(
            name: "TDCorePlugin",
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/TDCorePlugin_xcframework_v4.3.4_18dcfcc_fp.zip",
            checksum: "7c74f81ca81ea92ac01abeefe62ff407c572713d3458e60d9a7c8fc0e67914f8"
        ),
        .binaryTarget(
            name: "FMDeviceManagerFramework",
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/FMDeviceManagerFramework_xcframework_v5.3.1.2_debf297.zip",
            checksum: "e4b204e819bb39aea72820342473003deb59abe4b18d4abdb1d4653a58ea08ff"
        )
    ]
)
