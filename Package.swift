// swift-tools-version: 5.9

import Foundation
import PackageDescription

let sourcesDir = URL(fileURLWithPath: #file)
    .deletingLastPathComponent()
    .appendingPathComponent("Sources")

let AOSKitTBD = sourcesDir.appendingPathComponent("AOSKit/include/AOSKit.tbd")
let AuthKitTBD = sourcesDir.appendingPathComponent("AOSKit/include/AuthKit.tbd")
let AOSKitLinker = LinkerSetting.unsafeFlags([AuthKitTBD.path, AOSKitTBD.path])

let package = Package(
    name: "MacAnisette",
    platforms: [.macOS(.v10_13)],
    products: [
        .library(name: "MacAnisette", targets: ["MacAnisette"]),
    ],
    targets: [
        .target(name: "MacAnisette", dependencies: ["AOSKit"]),
        .target(name: "AOSKit", linkerSettings: [AOSKitLinker]),
        .testTarget(name: "MacAnisetteTests", dependencies: ["MacAnisette"]),
    ]
)
