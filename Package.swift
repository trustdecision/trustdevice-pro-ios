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
            targets: [
                "TrustDecisionPro",
                "TDMobRisk",
                "TDCorePlugin",
                "FMDeviceManagerFramework"
            ]
        )
    ],
    targets: [
        .target(
            name: "TrustDecisionPro",
            path: "Sources/TrustDecisionPro",
            linkerSettings: [
                .linkedLibrary("resolv.9")
            ]
        ),
        .binaryTarget(
            name: "TDMobRisk",
            url: "https://raw.githubusercontent.com/trustdecision/trustdevice-pro-ios/main/Artifacts/TDMobRisk_static_xcframework_v5.3.1.1.zip",
            checksum: "c55595901c781e59b2548ff4c9ab1fb5e395ccc76648cc5ccd228dae4f8861cc"
        ),
        .binaryTarget(
            name: "TDCorePlugin",
            url: "https://static.trustdecision.com/fp-ios/5.3.1/spm/TDCorePlugin_xcframework_v4.3.4_18dcfcc_fp.zip",
            checksum: "7c74f81ca81ea92ac01abeefe62ff407c572713d3458e60d9a7c8fc0e67914f8"
        ),
        .binaryTarget(
            name: "FMDeviceManagerFramework",
            url: "https://raw.githubusercontent.com/trustdecision/trustdevice-pro-ios/main/Artifacts/FMDeviceManagerFramework_static_xcframework_v5.3.1.1.zip",
            checksum: "7d63fdf112050bc347a975e5a457934be06b4e4d131fadd6baa0853a125fdc0a"
        )
    ]
)
