# CrackStation, a Decrypter implementation

CrackStation library cracks the unsalted hashes that is up to three characters in length,  matches the regular expression `[A-Za-z0-9?!]{1,3}` and is encrypted using SHA-1 or SHA-256

## Overview

CrackStation will crack any password that is up to three characters in length,  matches the regular expression `[A-Za-z0-9?!]{1,3}` and is encrypted using SHA-1 or SHA-256. CrackStation will show how by using a reverse lookup table anyone can crack the encrypted unsalted hashes passwords. 

## Mission Statement

The purpose of CrackStation library is to crack the SHA-1 or SHA-256 encrypted private messages. The words in the messages should be divided into parts of upto 3 characters.

# Installation
### Swift Package Manager
The [Swift Package Manager](https://www.swift.org/package-manager/) is "a tool for managing and distributing of swift code. It's integrated with the swift build system to automate the process of downloading, compiling and linking dependencies."

Once you have yourswift package set up, add CrackStation to the list of dependencies in your package.swift file:

```swift
    dependencies: [
        .package(url: "git@github.com:BasudkarB/CrackStation.git", from: "1.2.3"),
    ]
```

# Usage
## The API
The CrackStation constructor:

    required public init() {
        self.lookUPTable = try! JSONSerialization.jsonObject(with: Data(contentsOf: Bundle.module.url(forResource: "data", withExtension: "json")!)) as? [String:String] ?? [:]
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
            assert(decrypt, "F!d")
        
        }
    
    }

# Author
Bhagyashree Basudkar
