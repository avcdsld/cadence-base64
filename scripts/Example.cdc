import Base64Util from 0x01

pub fun main() {
    let metadata = {
        "key1": "value1",
        "key2": "value2"
    }
    log(Base64Util.encodeFromDict(metadata))

    let str = "test str"
    log(Base64Util.encode(str))
}
