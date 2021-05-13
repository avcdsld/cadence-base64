// Note: This utility does not support multibyte strings.

pub contract Base64Util {

    pub fun encode(_ str: String): String {
        let binaryStr = Base64Util.toBinaryStr(str)

        let binaryStrArray = Base64Util.splitToArray(binaryStr, splitNum: 6, padStr: "0")

        let base64Map: {String: String} = {
            "000000": "A", "000001": "B", "000010": "C", "000011": "D",
            "000100": "E", "000101": "F", "000110": "G", "000111": "H",
            "001000": "I", "001001": "J", "001010": "K", "001011": "L",
            "001100": "M", "001101": "N", "001110": "O", "001111": "P",
            "010000": "Q", "010001": "R", "010010": "S", "010011": "T",
            "010100": "U", "010101": "V", "010110": "W", "010111": "X",
            "011000": "Y", "011001": "Z", "011010": "a", "011011": "b",
            "011100": "c", "011101": "d", "011110": "e", "011111": "f",
            "100000": "g", "100001": "h", "100010": "i", "100011": "j",
            "100100": "k", "100101": "l", "100110": "m", "100111": "n",
            "101000": "o", "101001": "p", "101010": "q", "101011": "r",
            "101100": "s", "101101": "t", "101110": "u", "101111": "v",
            "110000": "w", "110001": "x", "110010": "y", "110011": "z",
            "110100": "0", "110101": "1", "110110": "2", "110111": "3",
            "111000": "4", "111001": "5", "111010": "6", "111011": "7",
            "111100": "8", "111101": "9", "111110": "+", "111111": "/"
        }
        var res = ""
        for binStr in binaryStrArray {
            res = res.concat(base64Map[binStr]!)
        }
        return res
    }

    pub fun encodeFromDict(_ dict: {String: String}): String {
        let jsonStr = Base64Util.dictToJsonStr(dict)
        return Base64Util.encode(jsonStr)
    }

    priv fun toBinaryStr(_ str: String): String {
        let asciiMap = {
            " ": "00100000", "!": "00100001", "\"": "00100010", "#": "00100011",
            "$": "00100100", "%": "00100101", "&": "00100110", "'": "00100111",
            "(": "00101000", ")": "00101001", "*": "00101010", "+": "00101011",
            ",": "00101100", "-": "00101101", ".": "00101110", "/": "00101111",
            "0": "00110000", "1": "00110001", "2": "00110010", "3": "00110011",
            "4": "00110100", "5": "00110101", "6": "00110110", "7": "00110111",
            "8": "00111000", "9": "00111001", ":": "00111010", ";": "00111011",
            "<": "00111100", "=": "00111101", ">": "00111110", "?": "00111111",
            "@": "01000000", "A": "01000001", "B": "01000010", "C": "01000011",
            "D": "01000100", "E": "01000101", "F": "01000110", "G": "01000111",
            "H": "01001000", "I": "01001001", "J": "01001010", "K": "01001011",
            "L": "01001100", "M": "01001101", "N": "01001110", "O": "01001111",
            "P": "01010000", "Q": "01010001", "R": "01010010", "S": "01010011",
            "T": "01010100", "U": "01010101", "V": "01010110", "W": "01010111",
            "X": "01011000", "Y": "01011001", "Z": "01011010", "[": "01011011",
            "\\": "01011100", "]": "01011101", "^": "01011110", "_": "01011111",
            "`": "01100000", "a": "01100001", "b": "01100010", "c": "01100011",
            "d": "01100100", "e": "01100101", "f": "01100110", "g": "01100111",
            "h": "01101000", "i": "01101001", "j": "01101010", "k": "01101011",
            "l": "01101100", "m": "01101101", "n": "01101110", "o": "01101111",
            "p": "01110000", "q": "01110001", "r": "01110010", "s": "01110011",
            "t": "01110100", "u": "01110101", "v": "01110110", "w": "01110111",
            "x": "01111000", "y": "01111001", "z": "01111010", "{": "01111011",
            "|": "01111100", "}": "01111101", "~": "01111110"
        }
        var res = ""
        var i = 0
        while i < str.length {
            let s = str.slice(from: i, upTo: i + 1)
            res = res.concat(asciiMap[s]!)
            i = i + 1
        }
        return res
    }

    priv fun splitToArray(_ originalStr: String, splitNum: Int, padStr: String): [String] {
        let str = Base64Util.pad(originalStr, splitNum, padStr)
        var res: [String] = [];
        var i = 0
        while i < str.length {
            res.append(str.slice(from: i, upTo: i + splitNum))
            i = i + splitNum
        }
        return res
    }

    priv fun pad(_ str: String, _ splitNum: Int, _ padStr: String): String {
        let padNum = splitNum - str.length % splitNum
        if padNum == 0 {
            return str
        }

        var res = str
        var i = 0
        while i < padNum {
            res = res.concat(padStr)
            i = i + 1
        }
        return res
    }

    priv fun dictToJsonStr(_ dict: {String: String}): String {
        var res = "{"
        var flag = false
        for key in dict.keys {
            if !flag {
                flag = true
            } else {
                res = res.concat(",")
            }
            res = res.concat("\"")
                    .concat(key)
                    .concat("\":\"")
                    .concat(Base64Util.escape(dict[key]!))
                    .concat("\"")
        }
        res = res.concat("}")
        return res
    }

    priv fun escape(_ str: String): String {
        var res = ""
        var i = 0
        while i < str.length {
            let s = str.slice(from: i, upTo: i + 1)
            if s == "\"" || s == "\\" {
            res = res.concat("\\")
            }
            res = res.concat(s)
            i = i + 1
        }
        return res
    }
}
