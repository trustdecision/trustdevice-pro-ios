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
            url: "https://static.trustdecision.com/fp-ios/5.3.2/spm/TDMobRisk_xcframework_v5.3.2_99139a5.zip",
            checksum: "5236cc98ebd08facc547ec9c06e7558328ca147ad476ae8e3abddeb5f280dee4"
        ),
        .binaryTarget(
            name: "TDCorePlugin",
            url: "https://static.trustdecision.com/fp-ios/5.3.2/spm/TDCorePlugin_xcframework_v4.3.7_9ddec2b.zip",
            checksum: "decc8ec1fdc792d024bea011629c84f3bf3db4205c1a9c5ccab934528d40fad5"
        ),
        .binaryTarget(
            name: "FMDeviceManagerFramework",
            url: "https://static.trustdecision.com/fp-ios/5.3.2/spm/FMDeviceManagerFramework_xcframework_v5.3.2_ce4d3a3.zip",
            checksum: "4cc6b0d918cbc673c3b0392be13d33ffe1c10427b5f5586012b8a0e999c94365"
        )
    ]
)
