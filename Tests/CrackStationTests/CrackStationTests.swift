import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    
    func test() throws {
        //when
        
        let crackStation = CrackStation()
        let r = crackStation.sha1()
        
        
        let ans = r["86f7e437faa5a7fce15d1ddcb9eaeaea377667b8"]
        
        //then
        XCTAssertEqual(ans, "a")
    }
    
    func testDecrypt() throws{
        let crackstation = CrackStation()
        let decrypt = crackstation.decrypt(shaHash : "22b2f572b93cca3fc4bd26f829f31b070b7e7873")
        XCTAssertEqual(decrypt, "6f")
        
    }
        
}
