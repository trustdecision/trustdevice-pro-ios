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
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/TDMobRisk_xcframework_static_v5.3.1.1.zip",
            checksum: "cf32c53808bb707666e93c46bbdbbd86a2d5dc521a7c433933afdb77b1636ec0"
        ),
        .binaryTarget(
            name: "TDCorePlugin",
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/TDCorePlugin_xcframework_v4.3.4_18dcfcc_fp.zip",
            checksum: "7c74f81ca81ea92ac01abeefe62ff407c572713d3458e60d9a7c8fc0e67914f8"
        ),
        .binaryTarget(
            name: "FMDeviceManagerFramework",
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/FMDeviceManagerFramework_xcframework_static_v5.3.1.1.zip",
            checksum: "484153147e5e18cac46b50c2dd93af8d1af8567a8ee697be8845fd037d1752e2"
        )
    ]
)
