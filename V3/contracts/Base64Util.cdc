pub contract Base64Util {
    pub fun encode(_ str: String): String {
        let binaryStrArray = Base64Util.toBinaryStrArray(str)

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
            res = res.concat(base64Map[binStr] ?? binStr)
        }
        return res
    }

    pub fun encodeFromDict(_ dict: {String: String}): String {
        let jsonStr = Base64Util.dictToJsonStr(dict)
        return Base64Util.encode(jsonStr)
    }

    pub fun encodeV2FromDict(_ dict: {String: String}): String {
        let jsonStr = Base64Util.dictToJsonStr(dict)
        return Base64Util.encodeV2(jsonStr)
    }

    pub fun toBinaryStrArray(_ str: String): [String] {
        var res: [String] = [];
        var binaryStr: String = ""
        var count: UInt8 = 0
        let bytes = str.utf8
        for byte in bytes {
            var i: UInt8 = 8
            while i > 0 {
                i = i - 1
                binaryStr = binaryStr.concat(((byte >> i) & 1).toString())

                count = count + 1
                if count % 6 == 0 {
                    count = 0
                    res.append(binaryStr)
                    binaryStr = ""
                }
            }
        }
        if binaryStr != "" {
            while count < 6 {
                count = count + 1
                binaryStr = binaryStr.concat("0")
            }
            res.append(binaryStr)
        }
        return res
    }

    pub fun encodeV2(_ str: String): String {
        let base64Map: {UInt8: String} = {
            0: "A", 1: "B", 2: "C", 3: "D",
            4: "E", 5: "F", 6: "G", 7: "H",
            8: "I", 9: "J", 10: "K", 11: "L",
            12: "M", 13: "N", 14: "O", 15: "P",
            16: "Q", 17: "R", 18: "S", 19: "T",
            20: "U", 21: "V", 22: "W", 23: "X",
            24: "Y", 25: "Z", 26: "a", 27: "b",
            28: "c", 29: "d", 30: "e", 31: "f",
            32: "g", 33: "h", 34: "i", 35: "j",
            36: "k", 37: "l", 38: "m", 39: "n",
            40: "o", 41: "p", 42: "q", 43: "r",
            44: "s", 45: "t", 46: "u", 47: "v",
            48: "w", 49: "x", 50: "y", 51: "z",
            52: "0", 53: "1", 54: "2", 55: "3",
            56: "4", 57: "5", 58: "6", 59: "7",
            60: "8", 61: "9", 62: "+", 63: "/"
        }

        var res: String = "";
        let bytes = str.utf8
        while bytes.length % 3 != 0 {
            bytes.append(0)
        }
        var i = 0
        while i < bytes.length {
            res = res.concat(base64Map[bytes[i] >> 2]!)
            res = res.concat(base64Map[((bytes[i] << 6) >> 2) + (bytes[i + 1] >> 4)]!)
            res = res.concat(base64Map[((bytes[i + 1] << 4) >> 2) + (bytes[i + 2] >> 6)]!)
            res = res.concat(base64Map[((bytes[i + 2] << 2) >> 2)]!)
            i = i + 3
        }
        while res[res.length - 1] == "A" { // TODO: Check for problems in all cases.
            res = res.slice(from: 0, upTo: res.length - 1)
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
