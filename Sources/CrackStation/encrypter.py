import hashlib
import json

letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A" , "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?", "!"]

dictionary = {}

for L in letters:
    str = (hashlib.sha1(L.encode())).hexdigest()
    dictionary[str] = L
        
for L in letters:
    for E in letters:
        str = (hashlib.sha1((L+E).encode())).hexdigest()

        dictionary[str] = L+E

for L in letters:
    for E in letters:
        for S in letters:
            str = (hashlib.sha1((L+E+S).encode())).hexdigest()

            dictionary[str] = L+E+S        



with open("data.json", "w") as outfile:
	json.dump(dictionary, outfile)

