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
            url: "https://static.trustdecision.com/fp-ios/5.3.2/spm/TDMobRisk_xcframework_v5.3.2.1_24573de.zip",
            checksum: "95ccf082e6af53cc6a7dd2d1f6cdf9fcfbc03c0022c108f288c83ab6133519d3"
        ),
        .binaryTarget(
            name: "TDCorePlugin",
            url: "https://static.trustdecision.com/fp-ios/5.3.2/spm/TDCorePlugin_xcframework_v4.3.7_9ddec2b.zip",
            checksum: "decc8ec1fdc792d024bea011629c84f3bf3db4205c1a9c5ccab934528d40fad5"
        ),
        .binaryTarget(
            name: "FMDeviceManagerFramework",
            url: "https://static.trustdecision.com/fp-ios/5.3.2/spm/FMDeviceManagerFramework_xcframework_v5.3.2.1_cbdbb54.zip",
            checksum: "79326488b9c740e447cd35a865ae3ebd86df11fa68f87bf4628422863e3068ee"
        )
    ]
)
