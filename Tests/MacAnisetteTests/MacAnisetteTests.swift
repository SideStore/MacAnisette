import Testing
@testable import MacAnisette

@Test func getanisette() async throws {
    let ani = getAOSAnisette()
    print(ani)
}
