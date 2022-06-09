import Base64Util from 0x01

pub fun main() {
    let metadata = {
        "key1": "value1",
        "key2": "value2",
        "key3": "マルチバイト"
    }
    log(Base64Util.encodeFromDict(metadata))

    let str1 = "test str"
    log(Base64Util.encode(str1))

    let str2 = "マルチバイト"
    log(Base64Util.encode(str2))
}
