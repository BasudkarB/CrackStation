import Foundation
import CryptoKit


public class CrackStation : Decrypter
{

    private var lookUPTable:[String:String]

    public func decrypt(shaHash: String) -> String? {
        
        let password = lookUPTable[shaHash]
        return password
    }

    required public init() {
        
        self.lookUPTable = [:]
        if let path = Bundle.module.url(forResource: "data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: path)
                let jsonResult = try JSONSerialization.jsonObject(with: data)
                if let jsonResult = jsonResult as? [String:String] {
                    self.lookUPTable = jsonResult
                }
            } catch {
                self.lookUPTable = [:]
            }
        }
        
    }
    

      
}
