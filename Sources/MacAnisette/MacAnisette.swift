@_exported import AOSKit
import Foundation

/// Uses `AOSKit` to return `ALTAnisetteData`
@available(macOS 10.13, *)
public func getAOSAnisette() -> ALTAnisetteData { AOSKit.getAnisetteData() }

