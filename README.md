# CrackStation, a Decrypter implementation

CrackStation library cracks the unsalted hashes

## Overview

CrackStation will crack any password that is up to three characters in length,  matches the regular expression [A-Za-z0-9?!]{1,3} and is encrypted using SHA-1 

## Mission Statement

The purpose of CrackStation library is to crack the SHA-1 encrypted private messages. The words in the messages should be divided into parts of upto 3 characters.

# Installation
### Swift package Manager
The [Swift Package Manager](https://www.swift.org/package-manager/) is "a tool for managing and distributing of swift code. It's integrated with the swift build system to automate the process of downloading, compiling and linking dependencies."

Once you have yourswift package set up, add CrackStation to the list of dependencies in your package.swift file:

```swift
    dependencies: [
        .package(url: "git@github.com:BasudkarB/CrackStation.git", from: "1.2.0"),
    ]
```

# Usage
## The API
The CrackStation constructor:

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
    
The function below returns the plain-text password, if not found the function returns ```nil```.

     public func decrypt(shaHash: String) -> String? {
        
        let password = lookUPTable[shaHash]
        return password
    }


### An Example

    final class CrackStationTests: XCTestCase {
    
        func testDecrypt2(){
            let crackstation = CrackStation()
            let decrypt = crackstation.decrypt(shaHash : "f97d687176f9139a4a0b3cb1fad986fcde83bf91")
            XCTAssertEqual(decrypt, "F!d")
        
        }
    
    }

# Author
Bhagyashree Basudkar
