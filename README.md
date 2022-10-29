# CrackStation

#  A description of library. 
CrackStation will crack any password up to two characters in length, which (a) matches the regular expression`[A-Za-z0-9]{1,2}` and (b) is encrypted using SHA-1. 
    
#  A description of how to use it. 

To add this package:

**import CrackStation**

The decrypt function will decryt the input string which is SHA-1 hash string and will return a plain text password. If password is not found the function will return nil.

<img width="292" alt="image" src="https://user-images.githubusercontent.com/114601219/198856100-c4653ec9-ab2c-4c67-b4c1-823522262267.png">

Pass the SHA-1 hash string as parameter in decrypt function.

**decrypt(shaHash: "your String")**
    
#  The version of the latest stable release. 
`1.0.0`.
    
#  Author

Bhagyashree Basudkar
