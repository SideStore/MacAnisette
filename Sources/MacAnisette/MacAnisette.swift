@_exported import AOSKit
import Foundation

/// Uses `AOSKit` to return `AnisetteData`
@available(macOS 10.13, *)
public func getAOSAnisette() -> [AnyHashable : Any] { AOSKit.getAnisetteData() ?? [:] }

