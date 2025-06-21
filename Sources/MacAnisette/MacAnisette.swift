@_exported import AOSKit
import Foundation

/// Uses `AOSKit` to return anisette dictionary
@available(macOS 10.13, *)
public func getAOSAnisette() -> [AnyHashable: Any] { AOSKit.getAnisetteData() }

