import Base64Util from 0xf8d6e0586b0a20c7

pub fun main(): String {
    let metadata = {
        "key1": "value1",
        "key2": "value2",
        "key3": "マルチバイト"
    }
    log(Base64Util.encodeFromDict(metadata))

    let str1 = "マルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイトマルチバイト"
    return Base64Util.encode(str1)
}
