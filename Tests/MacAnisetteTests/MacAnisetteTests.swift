import Testing
@testable import MacAnisette

@Test func getanisette() async throws {
    let ani = getAOSAnisette()
    #expect(ani.routingInfo == 0)
}
