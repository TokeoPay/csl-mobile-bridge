import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension CSLKit {
// Swift Wrapper call to csl_bridge_reward_addresses_to_json
        public static func rewardAddressesToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_RewardAddresses>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_reward_addresses_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_reward_addresses_from_json
        public static func rewardAddressesFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_RewardAddresses> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_reward_addresses_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_reward_addresses_new
        public static func rewardAddressesNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_reward_addresses_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_reward_addresses_len
        public static func rewardAddressesLen(self_rptr p1: OpaqueRustPointer<Types.CSL_RewardAddresses>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_reward_addresses_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_all_to_bytes
        public static func scriptAllToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptAll>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_script_all_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_all_from_bytes
        public static func scriptAllFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_ScriptAll> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_all_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_all_to_hex
        public static func scriptAllToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptAll>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_script_all_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_all_from_hex
        public static func scriptAllFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ScriptAll> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_all_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_all_to_json
        public static func scriptAllToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptAll>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_script_all_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_all_from_json
        public static func scriptAllFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ScriptAll> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_all_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_all_new
        public static func scriptAllNew(native_scripts_rptr p1: OpaqueRustPointer<Types.CSL_NativeScripts>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_all_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_any_to_bytes
        public static func scriptAnyToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptAny>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_script_any_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_any_from_bytes
        public static func scriptAnyFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_ScriptAny> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_any_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_any_to_hex
        public static func scriptAnyToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptAny>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_script_any_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_any_from_hex
        public static func scriptAnyFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ScriptAny> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_any_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_any_to_json
        public static func scriptAnyToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptAny>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_script_any_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_any_from_json
        public static func scriptAnyFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ScriptAny> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_any_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_any_new
        public static func scriptAnyNew(native_scripts_rptr p1: OpaqueRustPointer<Types.CSL_NativeScripts>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_any_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_data_hash_from_bytes
        public static func scriptDataHashFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_ScriptDataHash> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_data_hash_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_data_hash_to_bytes
        public static func scriptDataHashToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptDataHash>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_script_data_hash_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_data_hash_to_bech32
        public static func scriptDataHashToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptDataHash>, prefix_str p2: String) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_script_data_hash_to_bech32(c_p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_data_hash_from_bech32
        public static func scriptDataHashFromBech32(bech_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ScriptDataHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_data_hash_from_bech32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_data_hash_to_hex
        public static func scriptDataHashToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptDataHash>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_script_data_hash_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_data_hash_from_hex
        public static func scriptDataHashFromHex(hex_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ScriptDataHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_data_hash_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_hash_from_bytes
        public static func scriptHashFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_ScriptHash> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_hash_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_hash_to_bytes
        public static func scriptHashToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptHash>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_script_hash_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_hash_to_bech32
        public static func scriptHashToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptHash>, prefix_str p2: String) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_script_hash_to_bech32(c_p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_hash_from_bech32
        public static func scriptHashFromBech32(bech_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ScriptHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_hash_from_bech32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_hash_to_hex
        public static func scriptHashToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptHash>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_script_hash_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_hash_from_hex
        public static func scriptHashFromHex(hex_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ScriptHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_hash_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_hashes_to_bytes
        public static func scriptHashesToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptHashes>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_script_hashes_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_hashes_from_bytes
        public static func scriptHashesFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_ScriptHashes> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_hashes_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_hashes_to_hex
        public static func scriptHashesToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptHashes>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_script_hashes_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_hashes_from_hex
        public static func scriptHashesFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ScriptHashes> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_hashes_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_hashes_to_json
        public static func scriptHashesToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptHashes>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_script_hashes_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_hashes_from_json
        public static func scriptHashesFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ScriptHashes> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_hashes_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_hashes_new
        public static func scriptHashesNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_hashes_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_hashes_len
        public static func scriptHashesLen(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptHashes>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_script_hashes_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_n_of_k_to_bytes
        public static func scriptNOfKToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptNOfK>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_script_n_of_k_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_n_of_k_from_bytes
        public static func scriptNOfKFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_ScriptNOfK> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_n_of_k_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_n_of_k_to_hex
        public static func scriptNOfKToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptNOfK>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_script_n_of_k_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_n_of_k_from_hex
        public static func scriptNOfKFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ScriptNOfK> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_n_of_k_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_n_of_k_to_json
        public static func scriptNOfKToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptNOfK>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_script_n_of_k_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_n_of_k_from_json
        public static func scriptNOfKFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ScriptNOfK> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_n_of_k_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_n_of_k_n
        public static func scriptNOfKN(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptNOfK>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_script_n_of_k_n(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_n_of_k_new
        public static func scriptNOfKNew(n_long p1: Int64, native_scripts_rptr p2: OpaqueRustPointer<Types.CSL_NativeScripts>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_n_of_k_new(p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_pubkey_to_bytes
        public static func scriptPubkeyToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptPubkey>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_script_pubkey_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_pubkey_from_bytes
        public static func scriptPubkeyFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_ScriptPubkey> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_pubkey_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_pubkey_to_hex
        public static func scriptPubkeyToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptPubkey>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_script_pubkey_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_pubkey_from_hex
        public static func scriptPubkeyFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ScriptPubkey> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_pubkey_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_pubkey_to_json
        public static func scriptPubkeyToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptPubkey>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_script_pubkey_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_pubkey_from_json
        public static func scriptPubkeyFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ScriptPubkey> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_pubkey_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_pubkey_addr_keyhash
        public static func scriptPubkeyAddrKeyhash(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptPubkey>) throws -> OpaqueRustPointer<Types.CSL_Ed25519KeyHash> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_pubkey_addr_keyhash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_pubkey_new
        public static func scriptPubkeyNew(addr_keyhash_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_pubkey_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_ref_to_bytes
        public static func scriptRefToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptRef>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_script_ref_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_ref_from_bytes
        public static func scriptRefFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_ScriptRef> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_ref_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_ref_to_hex
        public static func scriptRefToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptRef>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_script_ref_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_ref_from_hex
        public static func scriptRefFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ScriptRef> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_ref_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_ref_to_json
        public static func scriptRefToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptRef>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_script_ref_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_ref_from_json
        public static func scriptRefFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ScriptRef> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_ref_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_ref_new_native_script
        public static func scriptRefNewNativeScript(native_script_rptr p1: OpaqueRustPointer<Types.CSL_NativeScript>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_ref_new_native_script(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_ref_new_plutus_script
        public static func scriptRefNewPlutusScript(plutus_script_rptr p1: OpaqueRustPointer<Types.CSL_PlutusScript>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_script_ref_new_plutus_script(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_ref_is_native_script
        public static func scriptRefIsNativeScript(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptRef>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_script_ref_is_native_script(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_ref_is_plutus_script
        public static func scriptRefIsPlutusScript(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptRef>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_script_ref_is_plutus_script(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_script_ref_to_unwrapped_bytes
        public static func scriptRefToUnwrappedBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_ScriptRef>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_script_ref_to_unwrapped_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_addr_to_bytes
        public static func singleHostAddrToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_SingleHostAddr>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_addr_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_addr_from_bytes
        public static func singleHostAddrFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_SingleHostAddr> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_addr_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_addr_to_hex
        public static func singleHostAddrToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_SingleHostAddr>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_addr_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_addr_from_hex
        public static func singleHostAddrFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_SingleHostAddr> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_addr_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_addr_to_json
        public static func singleHostAddrToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_SingleHostAddr>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_addr_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_addr_from_json
        public static func singleHostAddrFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_SingleHostAddr> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_addr_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_addr_port
        public static func singleHostAddrPort(self_rptr p1: OpaqueRustPointer<Types.CSL_SingleHostAddr>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_addr_port(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_addr_new
        public static func singleHostAddrNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_addr_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_addr_new_with_port
        public static func singleHostAddrNewWithPort(port_long p1: Int64) throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_addr_new_with_port(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_addr_new_with_ipv4
        public static func singleHostAddrNewWithIpv4(ipv4_rptr p1: OpaqueRustPointer<Types.CSL_Ipv4>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_addr_new_with_ipv4(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_addr_new_with_port_ipv4
        public static func singleHostAddrNewWithPortIpv4(port_long p1: Int64, ipv4_rptr p2: OpaqueRustPointer<Types.CSL_Ipv4>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_addr_new_with_port_ipv4(p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_addr_new_with_ipv6
        public static func singleHostAddrNewWithIpv6(ipv6_rptr p1: OpaqueRustPointer<Types.CSL_Ipv6>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_addr_new_with_ipv6(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_addr_new_with_port_ipv6
        public static func singleHostAddrNewWithPortIpv6(port_long p1: Int64, ipv6_rptr p2: OpaqueRustPointer<Types.CSL_Ipv6>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_addr_new_with_port_ipv6(p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_addr_new_with_ipv4_ipv6
        public static func singleHostAddrNewWithIpv4Ipv6(ipv4_rptr p1: OpaqueRustPointer<Types.CSL_Ipv4>, ipv6_rptr p2: OpaqueRustPointer<Types.CSL_Ipv6>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_addr_new_with_ipv4_ipv6(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_addr_new_with_port_ipv4_ipv6
        public static func singleHostAddrNewWithPortIpv4Ipv6(port_long p1: Int64, ipv4_rptr p2: OpaqueRustPointer<Types.CSL_Ipv4>, ipv6_rptr p3: OpaqueRustPointer<Types.CSL_Ipv6>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_addr_new_with_port_ipv4_ipv6(p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_name_to_bytes
        public static func singleHostNameToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_SingleHostName>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_name_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_name_from_bytes
        public static func singleHostNameFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_SingleHostName> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_name_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_name_to_hex
        public static func singleHostNameToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_SingleHostName>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_name_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_name_from_hex
        public static func singleHostNameFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_SingleHostName> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_name_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_name_to_json
        public static func singleHostNameToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_SingleHostName>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_name_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_name_from_json
        public static func singleHostNameFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_SingleHostName> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_name_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_name_port
        public static func singleHostNamePort(self_rptr p1: OpaqueRustPointer<Types.CSL_SingleHostName>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_name_port(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_name_new
        public static func singleHostNameNew(dns_name_rptr p1: OpaqueRustPointer<Types.CSL_DNSRecordAorAAAA>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_name_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_single_host_name_new_with_port
        public static func singleHostNameNewWithPort(port_long p1: Int64, dns_name_rptr p2: OpaqueRustPointer<Types.CSL_DNSRecordAorAAAA>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_single_host_name_new_with_port(p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_and_vote_delegation_to_bytes
        public static func stakeAndVoteDelegationToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeAndVoteDelegation>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_stake_and_vote_delegation_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_and_vote_delegation_from_bytes
        public static func stakeAndVoteDelegationFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_StakeAndVoteDelegation> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_and_vote_delegation_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_and_vote_delegation_to_hex
        public static func stakeAndVoteDelegationToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeAndVoteDelegation>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_stake_and_vote_delegation_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_and_vote_delegation_from_hex
        public static func stakeAndVoteDelegationFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_StakeAndVoteDelegation> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_and_vote_delegation_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_and_vote_delegation_to_json
        public static func stakeAndVoteDelegationToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeAndVoteDelegation>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_stake_and_vote_delegation_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_and_vote_delegation_from_json
        public static func stakeAndVoteDelegationFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_StakeAndVoteDelegation> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_and_vote_delegation_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_and_vote_delegation_new
        public static func stakeAndVoteDelegationNew(stake_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>, pool_keyhash_rptr p2: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>, drep_rptr p3: OpaqueRustPointer<Types.CSL_DRep>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_and_vote_delegation_new(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_and_vote_delegation_has_script_credentials
        public static func stakeAndVoteDelegationHasScriptCredentials(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeAndVoteDelegation>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_stake_and_vote_delegation_has_script_credentials(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_delegation_to_bytes
        public static func stakeDelegationToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeDelegation>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_stake_delegation_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_delegation_from_bytes
        public static func stakeDelegationFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_StakeDelegation> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_delegation_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_delegation_to_hex
        public static func stakeDelegationToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeDelegation>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_stake_delegation_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
}
