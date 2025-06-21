@_exported import AOSKit
import Foundation
import StosSign

/// Uses `AOSKit` to return `AnisetteData`
@available(macOS 10.13, *)
public func getAOSAnisette() -> AnisetteData {
    let dict = AOSKit.getAnisetteData()
    // Convert NSDictionary to JSON Data
    let jsonData = try! JSONSerialization.data(withJSONObject: dict ?? [], options: [])
    
    return try! JSONDecoder().decode(AnisetteData.self, from: jsonData)
}

