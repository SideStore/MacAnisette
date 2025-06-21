import Testing
@testable import MacAnisette

@Test func getanisette() async throws {
    let ani = getAOSAnisette()
    #expect(ani["locale"] as! String == Locale.current.identifier)
    #expect(ani["routingInfo"] as! String == "0")
}
