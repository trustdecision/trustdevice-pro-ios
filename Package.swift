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
            url: "https://static.trustdecision.com/fp-ios/5.3.2/spm/TDMobRisk_xcframework_v5.3.2.2_b70357a_v1.zip",
            checksum: "e34d63745325ce6a0cd61b0997b4030e74a1d96ff3e946cbdf9def294c24768a"
        ),
        .binaryTarget(
            name: "TDCorePlugin",
            url: "https://static.trustdecision.com/fp-ios/5.3.2/spm/TDCorePlugin_xcframework_v4.3.7_9ddec2b.zip",
            checksum: "decc8ec1fdc792d024bea011629c84f3bf3db4205c1a9c5ccab934528d40fad5"
        ),
        .binaryTarget(
            name: "FMDeviceManagerFramework",
            url: "https://static.trustdecision.com/fp-ios/5.3.2/spm/FMDeviceManagerFramework_xcframework_v5.3.2.2_fde8b16_v1.zip",
            checksum: "cbe49cf2fcc3fef0c35eab273ccbb5769c222ba5ea5901f26fc2452d6a68b426"
        )
    ]
)
