import Testing
import XCTest
@testable import CSLKit

extension Data {
    func hexEncodedString() -> String {
        return map { String(format: "%02hhx", $0) }.joined()
    }
}

@Test func test_addressRoundTrip() async throws {
    let testAddress = "addr1q9cehmjzf2tmtzeae2y0uhdxl6kxf992wgn0ja0n2pk9kftcgmmtkpl4k2p93p0y2qn8ne5eknnq5rzxpxjxhs652nxsqwq3mt"
    let addr = try CSLKit.addressFromBech32(bech_str_str: testAddress)
    
    let resAddr = try CSLKit.addressToBech32(self_rptr: addr)
    
    XCTAssertEqual(testAddress, resAddr, "Address round trip failed")
}

@Test func test_addressHardcoreRoundTrip() async throws {
    let testAddress = "addr1q9cehmjzf2tmtzeae2y0uhdxl6kxf992wgn0ja0n2pk9kftcgmmtkpl4k2p93p0y2qn8ne5eknnq5rzxpxjxhs652nxsqwq3mt"
    let addr = try CSLKit.addressFromBech32(bech_str_str: testAddress)
    
    let addrHex = try CSLKit.addressToHex(self_rptr: addr)
    
    let addr2 = try CSLKit.addressFromHex(hex_str_str: addrHex)
    
    let resAddr = try CSLKit.addressToBech32(self_rptr: addr2)
    
    XCTAssertEqual(testAddress, resAddr, "Address round trip failed")
}


@Test("Transaction Hex to Hash")
func test_tx_to_txHash() async throws {
    let txn = "84a500818258207233486deda2a6c5258a1c758e48a4e6adf5dd936e448c58819afb97f73e2c6500018383583931c727443d77df6cff95dca383994f4c3024d03ff56b02ecc22b0f3f652c967f4bd28944b06462e13c5e3f5d5fa6e03f8567569438cd833e6d821a001473faa1581c2341201e2508eaebd9acaecbaa7630350cee6ebf437c52cc42bab23ea151477265656479476f626c696e7331333635015820ce96091328eb06b95814505a4c936c848d2509362e3979ba39f85b364f5561e782583901829f189e40ce8ee7bfeb44cba97435fa07f16471dcfdb54dfb71e3208df11bbb405a7d1cab4f3041c9ba6efce2edff9b027b6ca4c73e97d3821a0013669aa1581c2341201e2508eaebd9acaecbaa7630350cee6ebf437c52cc42bab23ea250477265656479476f626c696e733536340151477265656479476f626c696e73333333370182583901829f189e40ce8ee7bfeb44cba97435fa07f16471dcfdb54dfb71e3208df11bbb405a7d1cab4f3041c9ba6efce2edff9b027b6ca4c73e97d31a002164a3021a00030c09031a093bd62b075820c5a85e24ee5da45cd06c118cd6be8ce5a33a505d9b3dc8f7b8fa27ce0c59be86a0f5a8181e61361832784064383739396639666438373939666438373939666438373939663538316337306464346166353762363964393634386239333636663330396634373037303335183378403035636163393764313032306537353530616433353866666438373939666438373939666438373939663538316336383134303631646234363339623634323918347840626439363666323764316261653761326637323362393162643063383234613330653633383766666666666666663161303030663432343066666438373939661835784064383739396664383739396635383163383239663138396534306365386565376266656234346362613937343335666130376631363437316463666462353464183678406662373165333230666664383739396664383739396664383739396635383163386466313162626234303561376431636162346633303431633962613665666318377840653265646666396230323762366361346337336539376433666666666666666631613030376131323030666666663538316338323966313839653430636538651838782d65376266656234346362613937343335666130376631363437316463666462353464666237316533323066662c"
    
    XCTAssertEqual(try getTxHash(txn: txn), "359f5f7ea6224cb3928940ab96ee15df9a8f46ddca1bbb74f339fd5e3db914b5")
}


func getTxHash(txn: String) throws -> String {
    let tx = try CSLKit.fixedTransactionFromHex(hex_str_str: txn)
    
    let bodyData = try CSLKit.fixedTransactionRawBody(self_rptr: tx)
    
    let body = try CSLKit.fixedTransactionBodyFromHex(hex_str_str: bodyData.hexEncodedString())
    
    let hash = try CSLKit.fixedTransactionBodyTxHash(self_rptr: body)
    
    return try CSLKit.transactionHashToHex(self_rptr: hash)
}
