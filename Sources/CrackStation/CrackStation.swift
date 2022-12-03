import Foundation
import CryptoKit


public class CrackStation : Decrypter
{

    private let lookUPTable:[String:String]

    public func decrypt(shaHash: String) -> String? {
        
        let password = lookUPTable[shaHash]
        return password
    }

    required public init() {
        self.lookUPTable = try! JSONSerialization.jsonObject(with: Data(contentsOf: Bundle.module.url(forResource: "data", withExtension: "json")!)) as? [String:String] ?? [:]
    }
}