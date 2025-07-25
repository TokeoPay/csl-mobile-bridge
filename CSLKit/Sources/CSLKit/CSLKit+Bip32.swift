
import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension CSLKit {

    // Swift Wrapper call to csl_bridge_bip32_private_key_derive
    public static func bip32PrivateKeyDerive(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PrivateKey>, index_u32 p2: Int64) throws -> OpaqueRustPointer<Types.CSL_Bip32PrivateKey> {
        let c_p1 = p1.cPointer
        let c_p2 = p2
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_bip32_private_key_derive(c_p1, c_p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }



//    // Swift Wrapper call to csl_bridge_bip32_private_key_to_bech32
//    public static func bip32PrivateKeyToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PrivateKey>) throws -> String {
//        let c_p1 = p1.cPointer
//        var result : CharPtr? = nil
//        var error: CharPtr? = nil
//        let success = csl_bridge_bip32_private_key_to_bech32(c_p1, &result, &error)
//        if success {
//            return String(cString: result!)
//        } else {
//            throw createError(from: error)
//        }
//    }

    // Swift Wrapper call to csl_bridge_bip32_private_key_from_hex
    public static func bip32PrivateKeyFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Bip32PrivateKey> {
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_bip32_private_key_from_hex(p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_bip32_public_key_from_bytes
    public static func bip32PublicKeyFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Bip32PublicKey> { 
        var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
        let c_p1_len = UInt(p1.count)
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_bip32_public_key_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
        if success {    
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_bip32_public_key_as_bytes
    public static func bip32PublicKeyAsBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PublicKey>) throws -> Data {
        let c_p1 = p1.cPointer
        var result  = try DataPtr.init(fromData: Data())
        var error: CharPtr? = nil
        let success = csl_bridge_bip32_public_key_as_bytes(c_p1, &result, &error)
        if success {
            return Data(dataPtr: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_bip32_public_key_from_bech32
    public static func bip32PublicKeyFromBech32(bech32_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Bip32PublicKey> {
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_bip32_public_key_from_bech32(p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_bip32_private_key_to_128_xprv
    public static func bip32PrivateKeyTo128Xprv(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PrivateKey>) throws -> Data {
        let c_p1 = p1.cPointer
        var result  = try DataPtr.init(fromData: Data())
        var error: CharPtr? = nil
        let success = csl_bridge_bip32_private_key_to_128_xprv(c_p1, &result, &error)
        if success {
            return Data(dataPtr: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_bip32_public_key_derive
    public static func bip32PublicKeyDerive(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PublicKey>, index_u32 p2: Int64) throws -> OpaqueRustPointer<Types.CSL_Bip32PublicKey> {
        let c_p1 = p1.cPointer
        let c_p2 = p2
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_bip32_public_key_derive(c_p1, c_p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_bip32_public_key_to_bech32
    public static func bip32PublicKeyToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PublicKey>) throws -> String {
        let c_p1 = p1.cPointer
        var result : CharPtr? = nil
        var error: CharPtr? = nil
        let success = csl_bridge_bip32_public_key_to_bech32(c_p1, &result, &error)
        if success {
            return String(cString: result!)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_bip32_private_key_from_128_xprv
    public static func bip32PrivateKeyFrom128Xprv(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Bip32PrivateKey> {
        var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
        let c_p1_len = UInt(p1.count)
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_bip32_private_key_from_128_xprv(&c_p1_ptr, c_p1_len, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_bip32_private_key_generate_ed25519_bip32
    public static func bip32PrivateKeyGenerateEd25519Bip32() throws -> OpaqueRustPointer<Types.CSL_Bip32PrivateKey> {
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_bip32_private_key_generate_ed25519_bip32(&result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }


    // Swift Wrapper call to csl_bridge_bip32_private_key_derive
    public static func bip32PrivateKeyDerive(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PrivateKey>, index_u64 p2: Int64) throws -> OpaqueRustPointer<Types.CSL_Bip32PrivateKey> {
        let c_p1 = p1.cPointer
        let c_p2 = p2
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_bip32_private_key_derive(c_p1, c_p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_bip32_private_key_to_raw_key
    public static func bip32PrivateKeyToRawKey(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PrivateKey>) throws -> OpaqueRustPointer<Types.CSL_PrivateKey> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_bip32_private_key_to_raw_key(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_bip32_private_key_to_public
    public static func bip32PrivateKeyToPublic(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PrivateKey>) throws -> OpaqueRustPointer<Types.CSL_Bip32PublicKey> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_bip32_private_key_to_public(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
        

        // Swift Wrapper call to csl_bridge_bip32_private_key_to_public
//        public static func bip32PrivateKeyToPublic(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PrivateKey>) throws -> OpaqueRustPointer<Types.CSL_PublicKey> {
//            let c_p1 = p1.cPointer
//            var result  = RPtr(_0: nil)
//            var error: CharPtr? = nil
//            let success = csl_bridge_bip32_private_key_to_public(c_p1, &result, &error)
//            if success {
//                return OpaqueRustPointer(cPointer: result)
//            } else {
//                throw createError(from: error)
//            }
//        }
        

        // Swift Wrapper call to csl_bridge_bip32_private_key_from_bytes
        public static func bip32PrivateKeyFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Bip32PrivateKey> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_bip32_private_key_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bip32_private_key_as_bytes
        public static func bip32PrivateKeyAsBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PrivateKey>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_bip32_private_key_as_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bip32_private_key_from_bech32
        public static func bip32PrivateKeyFromBech32(bech32_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Bip32PrivateKey> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_bip32_private_key_from_bech32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bip32_private_key_to_bech32
        public static func bip32PrivateKeyToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PrivateKey>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_bip32_private_key_to_bech32(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bip32_private_key_from_bip39_entropy
        public static func bip32PrivateKeyFromBip39Entropy(entropy_data p1: Data, password_data p3: Data) throws -> OpaqueRustPointer<Types.CSL_Bip32PrivateKey> {
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            
            // Nest the withUnsafeBytes closures to ensure both pointers are valid
            let success = p1.withUnsafeBytes { p1Buffer in
                let c_p1_ptr = p1Buffer.baseAddress!
                let c_p1_len = UInt(p1Buffer.count)
                    
                return p3.withUnsafeBytes { p3Buffer in
                    let c_p3_ptr = p3Buffer.baseAddress!
                    let c_p3_len = UInt(p3Buffer.count)
                    
                    // Call the Rust function here, inside the innermost closure
                    return csl_bridge_bip32_private_key_from_bip39_entropy(
                        c_p1_ptr,
                        c_p1_len,
                        c_p3_ptr,
                        c_p3_len,
                        &result,
                        &error
                    )
                }
            }
        
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
        

        // Swift Wrapper call to csl_bridge_bip32_private_key_chaincode
        public static func bip32PrivateKeyChaincode(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PrivateKey>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_bip32_private_key_chaincode(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bip32_private_key_to_hex
        public static func bip32PrivateKeyToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PrivateKey>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_bip32_private_key_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bip32_private_key_from_hex
//        public static func bip32PrivateKeyFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Bip32PrivateKey> {
//            
//            var result  = RPtr(_0: nil)
//            var error: CharPtr? = nil
//            let success = csl_bridge_bip32_private_key_from_hex(p1, &result, &error)
//            if success {
//                return OpaqueRustPointer(cPointer: result)
//            } else {
//                throw createError(from: error)
//            }
//        }
        

        // Swift Wrapper call to csl_bridge_bip32_public_key_to_raw_key
        public static func bip32PublicKeyToRawKey(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PublicKey>) throws -> OpaqueRustPointer<Types.CSL_PublicKey> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_bip32_public_key_to_raw_key(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bip32_public_key_from_bytes
//        public static func bip32PublicKeyFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Bip32PublicKey> {
//            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
//            let c_p1_len = UInt(p1.count)
//            var result  = RPtr(_0: nil)
//            var error: CharPtr? = nil
//            let success = csl_bridge_bip32_public_key_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
//            if success {
//                return OpaqueRustPointer(cPointer: result)
//            } else {
//                throw createError(from: error)
//            }
//        }
        

        // Swift Wrapper call to csl_bridge_bip32_public_key_as_bytes
//        public static func bip32PublicKeyAsBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PublicKey>) throws -> Data {
//            let c_p1 = p1.cPointer
//            var result  = try DataPtr.init(fromData: Data())
//            var error: CharPtr? = nil
//            let success = csl_bridge_bip32_public_key_as_bytes(c_p1, &result, &error)
//            if success {
//                return Data(dataPtr: result)
//            } else {
//                throw createError(from: error)
//            }
//        }
        

        // Swift Wrapper call to csl_bridge_bip32_public_key_from_bech32
//        public static func bip32PublicKeyFromBech32(bech32_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Bip32PublicKey> {
//            
//            var result  = RPtr(_0: nil)
//            var error: CharPtr? = nil
//            let success = csl_bridge_bip32_public_key_from_bech32(p1, &result, &error)
//            if success {
//                return OpaqueRustPointer(cPointer: result)
//            } else {
//                throw createError(from: error)
//            }
//        }
        

//        // Swift Wrapper call to csl_bridge_bip32_public_key_to_bech32
//        public static func bip32PublicKeyToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PublicKey>) throws -> String {
//            let c_p1 = p1.cPointer
//            var result : CharPtr? = nil
//            var error: CharPtr? = nil
//            let success = csl_bridge_bip32_public_key_to_bech32(c_p1, &result, &error)
//            if success {
//                return String(cString: result!)
//            } else {
//                throw createError(from: error)
//            }
//        }
        

        // Swift Wrapper call to csl_bridge_bip32_public_key_chaincode
        public static func bip32PublicKeyChaincode(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PublicKey>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_bip32_public_key_chaincode(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bip32_public_key_to_hex
        public static func bip32PublicKeyToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PublicKey>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_bip32_public_key_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bip32_public_key_from_hex
        public static func bip32PublicKeyFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Bip32PublicKey> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_bip32_public_key_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }

}
