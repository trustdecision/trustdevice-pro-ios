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
            url: "https://static.trustdecision.com/fp-ios/5.2.5.1/spm/TDMobRisk_xcframework_v5.2.5.1_0caa0d1.zip",
            checksum: "973f23c7d944ceaddd74cfc71bc01a1aa81b8418c4f4522981bfcf28a070e313"
        ),
        .binaryTarget(
            name: "TDCorePlugin",
            url: "https://static.trustdecision.com/fp-ios/5.2.5.1/spm/TDCorePlugin_xcframework_v4.3.3_d6b94fe.zip",
            checksum: "2a7de44941541b676f017f64ebfacb3933b8646fd019e6b0c7e01d1faa0645f4"
        ),
        .binaryTarget(
            name: "FMDeviceManagerFramework",
            url: "https://static.trustdecision.com/fp-ios/5.2.5.1/spm/FMDeviceManagerFramework_xcframework_v5.2.5.1_99a164b.zip",
            checksum: "79e64c2a05023b745e8cbb1758248f1bad1212f09705522867aa43f53e4334a3"
        )
    ]
)
