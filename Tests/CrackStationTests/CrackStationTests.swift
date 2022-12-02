import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {

    
    func testDecrypt1(){
        let crackstation = CrackStation()
        let decrypt = crackstation.decrypt(shaHash : "86f7e437faa5a7fce15d1ddcb9eaeaea377667b8")
        XCTAssertEqual(decrypt, "a")
        
    }
    
    func testDecrypt2(){
        let crackstation = CrackStation()
        let decrypt = crackstation.decrypt(shaHash : "f97d687176f9139a4a0b3cb1fad986fcde83bf91")
        XCTAssertEqual(decrypt, "F!d")
        
    }
    
    func testDecrypt3(){
        let crackstation = CrackStation()
        let decrypt = crackstation.decrypt(shaHash : "22b2f572b93cca3fc4bd26f829f31b070b7e7873")
        XCTAssertEqual(decrypt, "6f")
        
    }

     func testDecrypt4(){
        let crackstation = CrackStation()
        let decrypt = crackstation.decrypt(shaHash : "3aa08f6132a778539acfea51db82cb18dcca183c90b0c3c10216de3360fb99da")
        XCTAssertEqual(decrypt, "6f")
        
    }

        
}
