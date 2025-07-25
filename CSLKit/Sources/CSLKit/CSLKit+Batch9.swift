import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension CSLKit {
// Swift Wrapper call to csl_bridge_plutus_script_from_bytes
        public static func plutusScriptFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_PlutusScript> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_script_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_script_to_hex
        public static func plutusScriptToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusScript>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_script_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_script_from_hex
        public static func plutusScriptFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PlutusScript> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_script_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_script_new
        public static func plutusScriptNew(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_None> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_script_new(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_script_new_v2
        public static func plutusScriptNewV2(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_None> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_script_new_v2(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_script_new_v3
        public static func plutusScriptNewV3(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_None> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_script_new_v3(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_script_new_with_version
        public static func plutusScriptNewWithVersion(bytes_data p1: Data, language_rptr p3: OpaqueRustPointer<Types.CSL_Language>) throws -> OpaqueRustPointer<Types.CSL_None> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_script_new_with_version(&c_p1_ptr, c_p1_len, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_script_bytes
        public static func plutusScriptBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusScript>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_script_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_script_from_bytes_v2
        public static func plutusScriptFromBytesV2(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_PlutusScript> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_script_from_bytes_v2(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_script_from_bytes_v3
        public static func plutusScriptFromBytesV3(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_PlutusScript> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_script_from_bytes_v3(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_script_from_bytes_with_version
        public static func plutusScriptFromBytesWithVersion(bytes_data p1: Data, language_rptr p3: OpaqueRustPointer<Types.CSL_Language>) throws -> OpaqueRustPointer<Types.CSL_PlutusScript> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_script_from_bytes_with_version(&c_p1_ptr, c_p1_len, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_script_from_hex_with_version
        public static func plutusScriptFromHexWithVersion(hex_str_str p1: String, language_rptr p2: OpaqueRustPointer<Types.CSL_Language>) throws -> OpaqueRustPointer<Types.CSL_PlutusScript> {
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_script_from_hex_with_version(p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_script_source_new
        public static func plutusScriptSourceNew(script_rptr p1: OpaqueRustPointer<Types.CSL_PlutusScript>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_script_source_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_script_source_new_ref_input
        public static func plutusScriptSourceNewRefInput(script_hash_rptr p1: OpaqueRustPointer<Types.CSL_ScriptHash>, input_rptr p2: OpaqueRustPointer<Types.CSL_TransactionInput>, lang_ver_rptr p3: OpaqueRustPointer<Types.CSL_Language>, script_size_long p4: Int64) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_script_source_new_ref_input(c_p1, c_p2, c_p3, p4, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_script_source_get_ref_script_size
        public static func plutusScriptSourceGetRefScriptSize(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusScriptSource>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64  = 0
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_script_source_get_ref_script_size(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_scripts_to_bytes
        public static func plutusScriptsToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusScripts>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_scripts_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_scripts_from_bytes
        public static func plutusScriptsFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_PlutusScripts> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_scripts_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_scripts_to_hex
        public static func plutusScriptsToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusScripts>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_scripts_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_scripts_from_hex
        public static func plutusScriptsFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PlutusScripts> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_scripts_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_scripts_to_json
        public static func plutusScriptsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusScripts>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_scripts_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_scripts_from_json
        public static func plutusScriptsFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PlutusScripts> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_scripts_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_scripts_new
        public static func plutusScriptsNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_scripts_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_scripts_len
        public static func plutusScriptsLen(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusScripts>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_scripts_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_witness_new
        public static func plutusWitnessNew(script_rptr p1: OpaqueRustPointer<Types.CSL_PlutusScript>, datum_rptr p2: OpaqueRustPointer<Types.CSL_PlutusData>, redeemer_rptr p3: OpaqueRustPointer<Types.CSL_Redeemer>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_witness_new(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_witness_new_with_ref
        public static func plutusWitnessNewWithRef(script_rptr p1: OpaqueRustPointer<Types.CSL_PlutusScriptSource>, datum_rptr p2: OpaqueRustPointer<Types.CSL_DatumSource>, redeemer_rptr p3: OpaqueRustPointer<Types.CSL_Redeemer>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_witness_new_with_ref(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_witness_new_without_datum
        public static func plutusWitnessNewWithoutDatum(script_rptr p1: OpaqueRustPointer<Types.CSL_PlutusScript>, redeemer_rptr p2: OpaqueRustPointer<Types.CSL_Redeemer>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_witness_new_without_datum(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_witness_new_with_ref_without_datum
        public static func plutusWitnessNewWithRefWithoutDatum(script_rptr p1: OpaqueRustPointer<Types.CSL_PlutusScriptSource>, redeemer_rptr p2: OpaqueRustPointer<Types.CSL_Redeemer>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_witness_new_with_ref_without_datum(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_witnesses_new
        public static func plutusWitnessesNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_witnesses_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_witnesses_len
        public static func plutusWitnessesLen(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusWitnesses>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_witnesses_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pointer_new
        public static func pointerNew(slot_long p1: Int64, tx_index_long p2: Int64, cert_index_long p3: Int64) throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pointer_new(p1, p2, p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pointer_new_pointer
        public static func pointerNewPointer(slot_rptr p1: OpaqueRustPointer<Types.CSL_BigNum>, tx_index_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>, cert_index_rptr p3: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pointer_new_pointer(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pointer_slot
        public static func pointerSlot(self_rptr p1: OpaqueRustPointer<Types.CSL_Pointer>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_pointer_slot(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pointer_tx_index
        public static func pointerTxIndex(self_rptr p1: OpaqueRustPointer<Types.CSL_Pointer>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_pointer_tx_index(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pointer_cert_index
        public static func pointerCertIndex(self_rptr p1: OpaqueRustPointer<Types.CSL_Pointer>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_pointer_cert_index(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pointer_tx_index_bignum
        public static func pointerTxIndexBignum(self_rptr p1: OpaqueRustPointer<Types.CSL_Pointer>) throws -> OpaqueRustPointer<Types.CSL_BigNum> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pointer_tx_index_bignum(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pointer_address_new
        public static func pointerAddressNew(network_long p1: Int64, payment_rptr p2: OpaqueRustPointer<Types.CSL_Credential>, stake_rptr p3: OpaqueRustPointer<Types.CSL_Pointer>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pointer_address_new(p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pointer_address_payment_cred
        public static func pointerAddressPaymentCred(self_rptr p1: OpaqueRustPointer<Types.CSL_PointerAddress>) throws -> OpaqueRustPointer<Types.CSL_PaymentCred> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pointer_address_payment_cred(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pointer_address_to_address
        public static func pointerAddressToAddress(self_rptr p1: OpaqueRustPointer<Types.CSL_PointerAddress>) throws -> OpaqueRustPointer<Types.CSL_Address> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pointer_address_to_address(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pointer_address_from_address
        public static func pointerAddressFromAddress(addr_rptr p1: OpaqueRustPointer<Types.CSL_Address>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pointer_address_from_address(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pointer_address_network_id
        public static func pointerAddressNetworkId(self_rptr p1: OpaqueRustPointer<Types.CSL_PointerAddress>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_pointer_address_network_id(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_metadata_to_bytes
        public static func poolMetadataToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolMetadata>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_pool_metadata_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_metadata_from_bytes
        public static func poolMetadataFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_PoolMetadata> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_metadata_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_metadata_to_hex
        public static func poolMetadataToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolMetadata>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_pool_metadata_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_metadata_from_hex
        public static func poolMetadataFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PoolMetadata> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_metadata_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_metadata_to_json
        public static func poolMetadataToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolMetadata>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_pool_metadata_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_metadata_from_json
        public static func poolMetadataFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PoolMetadata> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_metadata_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_metadata_url
        public static func poolMetadataUrl(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolMetadata>) throws -> OpaqueRustPointer<Types.CSL_String> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_metadata_url(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_metadata_new
        public static func poolMetadataNew(url_rptr p1: OpaqueRustPointer<Types.CSL_URL>, pool_metadata_hash_rptr p2: OpaqueRustPointer<Types.CSL_PoolMetadataHash>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_metadata_new(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_metadata_hash_from_bytes
        public static func poolMetadataHashFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_PoolMetadataHash> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_metadata_hash_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_metadata_hash_to_bytes
        public static func poolMetadataHashToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolMetadataHash>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_pool_metadata_hash_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_metadata_hash_to_bech32
        public static func poolMetadataHashToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolMetadataHash>, prefix_str p2: String) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_pool_metadata_hash_to_bech32(c_p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_metadata_hash_from_bech32
        public static func poolMetadataHashFromBech32(bech_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PoolMetadataHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_metadata_hash_from_bech32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_metadata_hash_to_hex
        public static func poolMetadataHashToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolMetadataHash>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_pool_metadata_hash_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_metadata_hash_from_hex
        public static func poolMetadataHashFromHex(hex_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PoolMetadataHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_metadata_hash_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_params_to_bytes
        public static func poolParamsToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolParams>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_pool_params_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_params_from_bytes
        public static func poolParamsFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_PoolParams> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_params_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_params_to_hex
        public static func poolParamsToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolParams>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_pool_params_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_params_from_hex
        public static func poolParamsFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PoolParams> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_params_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_params_to_json
        public static func poolParamsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolParams>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_pool_params_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_params_from_json
        public static func poolParamsFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PoolParams> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_params_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_params_vrf_keyhash
        public static func poolParamsVrfKeyhash(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolParams>) throws -> OpaqueRustPointer<Types.CSL_VRFKeyHash> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_params_vrf_keyhash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_params_new
        public static func poolParamsNew(operator_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>, vrf_keyhash_rptr p2: OpaqueRustPointer<Types.CSL_VRFKeyHash>, pledge_rptr p3: OpaqueRustPointer<Types.CSL_BigNum>, cost_rptr p4: OpaqueRustPointer<Types.CSL_BigNum>, margin_rptr p5: OpaqueRustPointer<Types.CSL_UnitInterval>, reward_account_rptr p6: OpaqueRustPointer<Types.CSL_RewardAddress>, pool_owners_rptr p7: OpaqueRustPointer<Types.CSL_Ed25519KeyHashes>, relays_rptr p8: OpaqueRustPointer<Types.CSL_Relays>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            let c_p4 = p4.cPointer
            let c_p5 = p5.cPointer
            let c_p6 = p6.cPointer
            let c_p7 = p7.cPointer
            let c_p8 = p8.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_params_new(c_p1, c_p2, c_p3, c_p4, c_p5, c_p6, c_p7, c_p8, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_params_new_with_pool_metadata
        public static func poolParamsNewWithPoolMetadata(operator_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>, vrf_keyhash_rptr p2: OpaqueRustPointer<Types.CSL_VRFKeyHash>, pledge_rptr p3: OpaqueRustPointer<Types.CSL_BigNum>, cost_rptr p4: OpaqueRustPointer<Types.CSL_BigNum>, margin_rptr p5: OpaqueRustPointer<Types.CSL_UnitInterval>, reward_account_rptr p6: OpaqueRustPointer<Types.CSL_RewardAddress>, pool_owners_rptr p7: OpaqueRustPointer<Types.CSL_Ed25519KeyHashes>, relays_rptr p8: OpaqueRustPointer<Types.CSL_Relays>, pool_metadata_rptr p9: OpaqueRustPointer<Types.CSL_PoolMetadata>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            let c_p4 = p4.cPointer
            let c_p5 = p5.cPointer
            let c_p6 = p6.cPointer
            let c_p7 = p7.cPointer
            let c_p8 = p8.cPointer
            let c_p9 = p9.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_params_new_with_pool_metadata(c_p1, c_p2, c_p3, c_p4, c_p5, c_p6, c_p7, c_p8, c_p9, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_registration_to_bytes
        public static func poolRegistrationToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolRegistration>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_pool_registration_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_registration_from_bytes
        public static func poolRegistrationFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_PoolRegistration> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_registration_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_registration_to_hex
        public static func poolRegistrationToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolRegistration>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_pool_registration_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_registration_from_hex
        public static func poolRegistrationFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PoolRegistration> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_registration_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_registration_to_json
        public static func poolRegistrationToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolRegistration>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_pool_registration_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_registration_from_json
        public static func poolRegistrationFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PoolRegistration> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_registration_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_registration_new
        public static func poolRegistrationNew(pool_params_rptr p1: OpaqueRustPointer<Types.CSL_PoolParams>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_registration_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_retirement_to_bytes
        public static func poolRetirementToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolRetirement>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_pool_retirement_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_retirement_from_bytes
        public static func poolRetirementFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_PoolRetirement> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_retirement_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_retirement_to_hex
        public static func poolRetirementToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolRetirement>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_pool_retirement_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_retirement_from_hex
        public static func poolRetirementFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PoolRetirement> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_retirement_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_retirement_to_json
        public static func poolRetirementToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolRetirement>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_pool_retirement_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_retirement_from_json
        public static func poolRetirementFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PoolRetirement> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_retirement_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_retirement_epoch
        public static func poolRetirementEpoch(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolRetirement>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_pool_retirement_epoch(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_retirement_new
        public static func poolRetirementNew(pool_keyhash_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>, epoch_long p2: Int64) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_retirement_new(c_p1, p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_voting_thresholds_to_bytes
        public static func poolVotingThresholdsToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolVotingThresholds>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_pool_voting_thresholds_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_voting_thresholds_from_bytes
        public static func poolVotingThresholdsFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_PoolVotingThresholds> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_voting_thresholds_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_voting_thresholds_to_hex
        public static func poolVotingThresholdsToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolVotingThresholds>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_pool_voting_thresholds_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_voting_thresholds_from_hex
        public static func poolVotingThresholdsFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PoolVotingThresholds> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_voting_thresholds_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_voting_thresholds_to_json
        public static func poolVotingThresholdsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_PoolVotingThresholds>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_pool_voting_thresholds_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_voting_thresholds_from_json
        public static func poolVotingThresholdsFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PoolVotingThresholds> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_voting_thresholds_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_pool_voting_thresholds_new
        public static func poolVotingThresholdsNew(motion_no_confidence_rptr p1: OpaqueRustPointer<Types.CSL_UnitInterval>, committee_normal_rptr p2: OpaqueRustPointer<Types.CSL_UnitInterval>, committee_no_confidence_rptr p3: OpaqueRustPointer<Types.CSL_UnitInterval>, hard_fork_initiation_rptr p4: OpaqueRustPointer<Types.CSL_UnitInterval>, security_relevant_threshold_rptr p5: OpaqueRustPointer<Types.CSL_UnitInterval>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            let c_p4 = p4.cPointer
            let c_p5 = p5.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_pool_voting_thresholds_new(c_p1, c_p2, c_p3, c_p4, c_p5, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_private_key_sign
        public static func privateKeySign(self_rptr p1: OpaqueRustPointer<Types.CSL_PrivateKey>, msg_data p2: Data) throws -> OpaqueRustPointer<Types.CSL_Signature> {
            let c_p1 = p1.cPointer
            
            var c_p2_ptr = p2.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p2_len = UInt(p2.count)

            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_private_key_sign(c_p1, &c_p2_ptr, c_p2_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        
        // Swift Wrapper call to csl_bridge_private_key_to_public
        public static func privateKeyToPublic(self_rptr p1: OpaqueRustPointer<Types.CSL_PrivateKey>) throws -> OpaqueRustPointer<Types.CSL_PublicKey> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_private_key_to_public(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_private_key_generate_ed25519
        public static func privateKeyGenerateEd25519() throws -> OpaqueRustPointer<Types.CSL_PrivateKey> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_private_key_generate_ed25519(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_private_key_generate_ed25519extended
        public static func privateKeyGenerateEd25519extended() throws -> OpaqueRustPointer<Types.CSL_PrivateKey> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_private_key_generate_ed25519extended(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_private_key_from_bech32
        public static func privateKeyFromBech32(bech32_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PrivateKey> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_private_key_from_bech32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_private_key_to_bech32
        public static func privateKeyToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_PrivateKey>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_private_key_to_bech32(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_private_key_as_bytes
        public static func privateKeyAsBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_PrivateKey>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_private_key_as_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_private_key_from_extended_bytes
        public static func privateKeyFromExtendedBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_PrivateKey> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_private_key_from_extended_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_private_key_from_normal_bytes
        public static func privateKeyFromNormalBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_PrivateKey> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_private_key_from_normal_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
    
    
    public static func privateKeyCose1SignData(self_rptr p1: OpaqueRustPointer<Types.CSL_PrivateKey>, addr_ptr: OpaqueRustPointer<Types.CSL_Address>, bytes_data p2: Data) throws -> String {
        let c_p1 = p1.cPointer
        var c_p2_ptr = p2.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
        let c_p2_len = UInt(p2.count)
        var result: CharPtr? = nil
        var error: CharPtr? = nil
            
        let success = mk_cose1_sign_data(c_p1, addr_ptr.cPointer, c_p2_ptr, c_p2_len, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_private_key_to_hex
        public static func privateKeyToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_PrivateKey>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_private_key_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_private_key_from_hex
        public static func privateKeyFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PrivateKey> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_private_key_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_proposed_protocol_parameter_updates_to_bytes
        public static func proposedProtocolParameterUpdatesToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_ProposedProtocolParameterUpdates>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_proposed_protocol_parameter_updates_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_proposed_protocol_parameter_updates_from_bytes
        public static func proposedProtocolParameterUpdatesFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_ProposedProtocolParameterUpdates> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_proposed_protocol_parameter_updates_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_proposed_protocol_parameter_updates_to_hex
        public static func proposedProtocolParameterUpdatesToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_ProposedProtocolParameterUpdates>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_proposed_protocol_parameter_updates_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_proposed_protocol_parameter_updates_from_hex
        public static func proposedProtocolParameterUpdatesFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ProposedProtocolParameterUpdates> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_proposed_protocol_parameter_updates_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_proposed_protocol_parameter_updates_to_json
        public static func proposedProtocolParameterUpdatesToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_ProposedProtocolParameterUpdates>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_proposed_protocol_parameter_updates_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
}
