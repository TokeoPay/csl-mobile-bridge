import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension CSLKit {
// Swift Wrapper call to csl_bridge_big_num_less_than
        public static func bigNumLessThan(self_rptr p1: OpaqueRustPointer<Types.CSL_BigNum>, rhs_value_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> Bool {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_big_num_less_than(c_p1, c_p2, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_big_num_max_value
        public static func bigNumMaxValue() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_big_num_max_value(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_big_num_max
        public static func bigNumMax(a_rptr p1: OpaqueRustPointer<Types.CSL_BigNum>, b_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_big_num_max(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
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
        

        // Swift Wrapper call to csl_bridge_bip32_private_key_to_raw_key
        public static func bip32PrivateKeyToRawKey(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PrivateKey>) throws -> OpaqueRustPointer<Types.CSL_RawKey> {
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
        public static func bip32PrivateKeyToPublic(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PrivateKey>) throws -> OpaqueRustPointer<Types.CSL_PublicKey> {
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
        public static func bip32PrivateKeyFromBip39Entropy(entropy_data p1: Data, password_data p3: Data) throws -> OpaqueRustPointer<Types.CSL_None> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var c_p3_ptr = p3.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p3_len = UInt(p3.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_bip32_private_key_from_bip39_entropy(&c_p1_ptr, c_p1_len, &c_p3_ptr, c_p3_len, &result, &error)
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
        

        // Swift Wrapper call to csl_bridge_bip32_public_key_to_raw_key
        public static func bip32PublicKeyToRawKey(self_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PublicKey>) throws -> OpaqueRustPointer<Types.CSL_RawKey> {
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
        

        // Swift Wrapper call to csl_bridge_block_to_bytes
        public static func blockToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Block>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_block_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_block_from_bytes
        public static func blockFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Block> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_block_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_block_to_hex
        public static func blockToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Block>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_block_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_block_from_hex
        public static func blockFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Block> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_block_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_block_to_json
        public static func blockToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Block>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_block_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_block_from_json
        public static func blockFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Block> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_block_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_block_transaction_bodies
        public static func blockTransactionBodies(self_rptr p1: OpaqueRustPointer<Types.CSL_Block>) throws -> OpaqueRustPointer<Types.CSL_TransactionBodies> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_block_transaction_bodies(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_block_transaction_witness_sets
        public static func blockTransactionWitnessSets(self_rptr p1: OpaqueRustPointer<Types.CSL_Block>) throws -> OpaqueRustPointer<Types.CSL_TransactionWitnessSets> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_block_transaction_witness_sets(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_block_invalid_transactions
        public static func blockInvalidTransactions(self_rptr p1: OpaqueRustPointer<Types.CSL_Block>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_block_invalid_transactions(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_block_new
        public static func blockNew(header_rptr p1: OpaqueRustPointer<Types.CSL_Header>, transaction_bodies_rptr p2: OpaqueRustPointer<Types.CSL_TransactionBodies>, transaction_witness_sets_rptr p3: OpaqueRustPointer<Types.CSL_TransactionWitnessSets>, auxiliary_data_set_rptr p4: OpaqueRustPointer<Types.CSL_AuxiliaryDataSet>, invalid_transactions_str p5: String) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            let c_p4 = p4.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_block_new(c_p1, c_p2, c_p3, c_p4, p5, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_block_hash_from_bytes
        public static func blockHashFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_BlockHash> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_block_hash_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_block_hash_to_bytes
        public static func blockHashToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_BlockHash>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_block_hash_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_block_hash_to_bech32
        public static func blockHashToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_BlockHash>, prefix_str p2: String) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_block_hash_to_bech32(c_p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_block_hash_from_bech32
        public static func blockHashFromBech32(bech_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_BlockHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_block_hash_from_bech32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_block_hash_to_hex
        public static func blockHashToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_BlockHash>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_block_hash_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_block_hash_from_hex
        public static func blockHashFromHex(hex_str p1: String) throws -> OpaqueRustPointer<Types.CSL_BlockHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_block_hash_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witness_to_bytes
        public static func bootstrapWitnessToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_BootstrapWitness>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witness_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witness_from_bytes
        public static func bootstrapWitnessFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_BootstrapWitness> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witness_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witness_to_hex
        public static func bootstrapWitnessToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_BootstrapWitness>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witness_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witness_from_hex
        public static func bootstrapWitnessFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_BootstrapWitness> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witness_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witness_to_json
        public static func bootstrapWitnessToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_BootstrapWitness>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witness_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witness_from_json
        public static func bootstrapWitnessFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_BootstrapWitness> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witness_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witness_vkey
        public static func bootstrapWitnessVkey(self_rptr p1: OpaqueRustPointer<Types.CSL_BootstrapWitness>) throws -> OpaqueRustPointer<Types.CSL_Vkey> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witness_vkey(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witness_chain_code
        public static func bootstrapWitnessChainCode(self_rptr p1: OpaqueRustPointer<Types.CSL_BootstrapWitness>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witness_chain_code(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witness_attributes
        public static func bootstrapWitnessAttributes(self_rptr p1: OpaqueRustPointer<Types.CSL_BootstrapWitness>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witness_attributes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witness_new
        public static func bootstrapWitnessNew(vkey_rptr p1: OpaqueRustPointer<Types.CSL_Vkey>, signature_rptr p2: OpaqueRustPointer<Types.CSL_Ed25519Signature>, chain_code_data p3: Data, attributes_data p5: Data) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var c_p3_ptr = p3.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p3_len = UInt(p3.count)
            var c_p5_ptr = p5.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p5_len = UInt(p5.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witness_new(c_p1, c_p2, &c_p3_ptr, c_p3_len, &c_p5_ptr, c_p5_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witnesses_to_bytes
        public static func bootstrapWitnessesToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_BootstrapWitnesses>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witnesses_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witnesses_from_bytes
        public static func bootstrapWitnessesFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_BootstrapWitnesses> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witnesses_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witnesses_to_hex
        public static func bootstrapWitnessesToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_BootstrapWitnesses>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witnesses_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witnesses_from_hex
        public static func bootstrapWitnessesFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_BootstrapWitnesses> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witnesses_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witnesses_to_json
        public static func bootstrapWitnessesToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_BootstrapWitnesses>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witnesses_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witnesses_from_json
        public static func bootstrapWitnessesFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_BootstrapWitnesses> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witnesses_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witnesses_new
        public static func bootstrapWitnessesNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witnesses_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witnesses_len
        public static func bootstrapWitnessesLen(self_rptr p1: OpaqueRustPointer<Types.CSL_BootstrapWitnesses>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witnesses_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_bootstrap_witnesses_add
        public static func bootstrapWitnessesAdd(self_rptr p1: OpaqueRustPointer<Types.CSL_BootstrapWitnesses>, witness_rptr p2: OpaqueRustPointer<Types.CSL_BootstrapWitness>) throws -> Bool {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_bootstrap_witnesses_add(c_p1, c_p2, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_byron_address_to_base58
        public static func byronAddressToBase58(self_rptr p1: OpaqueRustPointer<Types.CSL_ByronAddress>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_byron_address_to_base58(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_byron_address_to_bytes
        public static func byronAddressToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_ByronAddress>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_byron_address_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_byron_address_from_bytes
        public static func byronAddressFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_ByronAddress> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_byron_address_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_byron_address_byron_protocol_magic
        public static func byronAddressByronProtocolMagic(self_rptr p1: OpaqueRustPointer<Types.CSL_ByronAddress>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_byron_address_byron_protocol_magic(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_byron_address_byron_address_kind
        public static func byronAddressByronAddressKind(self_rptr p1: OpaqueRustPointer<Types.CSL_ByronAddress>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_byron_address_byron_address_kind(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_byron_address_attributes
        public static func byronAddressAttributes(self_rptr p1: OpaqueRustPointer<Types.CSL_ByronAddress>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_byron_address_attributes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_byron_address_network_id
        public static func byronAddressNetworkId(self_rptr p1: OpaqueRustPointer<Types.CSL_ByronAddress>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_byron_address_network_id(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_byron_address_from_base58
        public static func byronAddressFromBase58(s_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ByronAddress> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_byron_address_from_base58(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_byron_address_icarus_from_key
        public static func byronAddressIcarusFromKey(key_rptr p1: OpaqueRustPointer<Types.CSL_Bip32PublicKey>, protocol_magic_long p2: Int64) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_byron_address_icarus_from_key(c_p1, p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_byron_address_is_valid
        public static func byronAddressIsValid(s_str p1: String) throws -> Bool {
            
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_byron_address_is_valid(p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_byron_address_to_address
        public static func byronAddressToAddress(self_rptr p1: OpaqueRustPointer<Types.CSL_ByronAddress>) throws -> OpaqueRustPointer<Types.CSL_Address> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_byron_address_to_address(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_byron_address_from_address
        public static func byronAddressFromAddress(addr_rptr p1: OpaqueRustPointer<Types.CSL_Address>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_byron_address_from_address(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_to_bytes
        public static func certificateToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Certificate>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_from_bytes
        public static func certificateFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Certificate> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_to_hex
        public static func certificateToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Certificate>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_from_hex
        public static func certificateFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Certificate> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_to_json
        public static func certificateToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Certificate>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_from_json
        public static func certificateFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Certificate> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_stake_registration
        public static func certificateNewStakeRegistration(stake_registration_rptr p1: OpaqueRustPointer<Types.CSL_StakeRegistration>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_stake_registration(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_reg_cert
        public static func certificateNewRegCert(stake_registration_rptr p1: OpaqueRustPointer<Types.CSL_StakeRegistration>) throws -> OpaqueRustPointer<Types.CSL_Certificate> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_reg_cert(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_stake_deregistration
        public static func certificateNewStakeDeregistration(stake_deregistration_rptr p1: OpaqueRustPointer<Types.CSL_StakeDeregistration>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_stake_deregistration(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_unreg_cert
        public static func certificateNewUnregCert(stake_deregistration_rptr p1: OpaqueRustPointer<Types.CSL_StakeDeregistration>) throws -> OpaqueRustPointer<Types.CSL_Certificate> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_unreg_cert(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_stake_delegation
        public static func certificateNewStakeDelegation(stake_delegation_rptr p1: OpaqueRustPointer<Types.CSL_StakeDelegation>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_stake_delegation(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_pool_registration
        public static func certificateNewPoolRegistration(pool_registration_rptr p1: OpaqueRustPointer<Types.CSL_PoolRegistration>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_pool_registration(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_pool_retirement
        public static func certificateNewPoolRetirement(pool_retirement_rptr p1: OpaqueRustPointer<Types.CSL_PoolRetirement>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_pool_retirement(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_genesis_key_delegation
        public static func certificateNewGenesisKeyDelegation(genesis_key_delegation_rptr p1: OpaqueRustPointer<Types.CSL_GenesisKeyDelegation>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_genesis_key_delegation(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_move_instantaneous_rewards_cert
        public static func certificateNewMoveInstantaneousRewardsCert(move_instantaneous_rewards_cert_rptr p1: OpaqueRustPointer<Types.CSL_MoveInstantaneousRewardsCert>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_move_instantaneous_rewards_cert(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_committee_hot_auth
        public static func certificateNewCommitteeHotAuth(committee_hot_auth_rptr p1: OpaqueRustPointer<Types.CSL_CommitteeHotAuth>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_committee_hot_auth(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_committee_cold_resign
        public static func certificateNewCommitteeColdResign(committee_cold_resign_rptr p1: OpaqueRustPointer<Types.CSL_CommitteeColdResign>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_committee_cold_resign(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_drep_deregistration
        public static func certificateNewDrepDeregistration(drep_deregistration_rptr p1: OpaqueRustPointer<Types.CSL_DRepDeregistration>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_drep_deregistration(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_drep_registration
        public static func certificateNewDrepRegistration(drep_registration_rptr p1: OpaqueRustPointer<Types.CSL_DRepRegistration>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_drep_registration(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_drep_update
        public static func certificateNewDrepUpdate(drep_update_rptr p1: OpaqueRustPointer<Types.CSL_DRepUpdate>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_drep_update(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_stake_and_vote_delegation
        public static func certificateNewStakeAndVoteDelegation(stake_and_vote_delegation_rptr p1: OpaqueRustPointer<Types.CSL_StakeAndVoteDelegation>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_stake_and_vote_delegation(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_stake_registration_and_delegation
        public static func certificateNewStakeRegistrationAndDelegation(stake_registration_and_delegation_rptr p1: OpaqueRustPointer<Types.CSL_StakeRegistrationAndDelegation>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_stake_registration_and_delegation(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_stake_vote_registration_and_delegation
        public static func certificateNewStakeVoteRegistrationAndDelegation(stake_vote_registration_and_delegation_rptr p1: OpaqueRustPointer<Types.CSL_StakeVoteRegistrationAndDelegation>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_stake_vote_registration_and_delegation(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_vote_delegation
        public static func certificateNewVoteDelegation(vote_delegation_rptr p1: OpaqueRustPointer<Types.CSL_VoteDelegation>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_vote_delegation(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_new_vote_registration_and_delegation
        public static func certificateNewVoteRegistrationAndDelegation(vote_registration_and_delegation_rptr p1: OpaqueRustPointer<Types.CSL_VoteRegistrationAndDelegation>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_new_vote_registration_and_delegation(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_kind
        public static func certificateKind(self_rptr p1: OpaqueRustPointer<Types.CSL_Certificate>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_kind(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_as_genesis_key_delegation
        public static func certificateAsGenesisKeyDelegation(self_rptr p1: OpaqueRustPointer<Types.CSL_Certificate>) throws -> OpaqueRustPointer<Types.CSL_GenesisKeyDelegation> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_as_genesis_key_delegation(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_as_committee_hot_auth
        public static func certificateAsCommitteeHotAuth(self_rptr p1: OpaqueRustPointer<Types.CSL_Certificate>) throws -> OpaqueRustPointer<Types.CSL_CommitteeHotAuth> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_as_committee_hot_auth(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_as_committee_cold_resign
        public static func certificateAsCommitteeColdResign(self_rptr p1: OpaqueRustPointer<Types.CSL_Certificate>) throws -> OpaqueRustPointer<Types.CSL_CommitteeColdResign> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_as_committee_cold_resign(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
}
