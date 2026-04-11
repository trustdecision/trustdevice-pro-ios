#if canImport(FMDeviceManagerFramework)
@_exported import FMDeviceManagerFramework
#endif
#if canImport(TDCorePlugin)
@_exported import TDCorePlugin
#endif
#if canImport(TDMobRisk)
@_exported import TDMobRisk
#endif

public enum TrustDecisionPro {}

#if canImport(TDMobRisk) && canImport(FMDeviceManagerFramework)
@_cdecl("TrustDecisionProForceLinkSymbols")
public func TrustDecisionProForceLinkSymbols() -> Int32 {
    _ = TDMobRiskManager.self
    _ = TDDeviceManager.self
    _ = FMDeviceManager.self
    return 0
}
#endif
