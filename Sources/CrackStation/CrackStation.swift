import Foundation
import CryptoKit


public class CrackStation : Decrypter
{
    public func decrypt(shaHash: String) -> String? {
        let r =  sha1()
        
        
        let ans = r[shaHash]
        if ans != nil {
            return r[shaHash]
        }
        else {
            return nil
        }
    }
    
    private var dict:[String:String]
    private let letters: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A" , "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

    
    required public init() {
        
        self.dict = [:]
        
    }
    
    public func encrypt(_ password: String) -> String {
        let dataToHash = Data(password.utf8)
        let prefix = "SHA 1 digest: "
        let shaHashDescription = String(Insecure.SHA1.hash(data: dataToHash).description)
        let shaHash = String(shaHashDescription.dropFirst(prefix.count - 1))
        return shaHash
    }
    
    public func sha1() -> [String: String]{
        for L in letters {
                    dict[encrypt(L)] = L
        }
        
        for L in letters {
            for E in letters {
                        dict[encrypt(L+E)] = L+E
            }
        }
        
        return dict
        
        
    }
        
}
