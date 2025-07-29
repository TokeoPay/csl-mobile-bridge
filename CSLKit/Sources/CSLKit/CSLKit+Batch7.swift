import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension CSLKit {
// Swift Wrapper call to csl_bridge_legacy_daedalus_private_key_as_bytes
        public static func legacyDaedalusPrivateKeyAsBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_LegacyDaedalusPrivateKey>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_legacy_daedalus_private_key_as_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_big_int_pow
        public static func bigIntPow(self_rptr p1: OpaqueRustPointer<Types.CSL_BigInt>, exponent_rptr p2: Int64) throws -> OpaqueRustPointer<Types.CSL_BigInt> {
            let c_p1 = p1.cPointer
            let c_p2 = p2
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_big_int_pow(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }


        // Swift Wrapper call to csl_bridge_legacy_daedalus_private_key_chaincode
        public static func legacyDaedalusPrivateKeyChaincode(self_rptr p1: OpaqueRustPointer<Types.CSL_LegacyDaedalusPrivateKey>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_legacy_daedalus_private_key_chaincode(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_linear_fee_new
        public static func linearFeeNew(coefficient_rptr p1: OpaqueRustPointer<Types.CSL_BigNum>, constant_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_LinearFee> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_linear_fee_new(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_m_i_r_to_stake_credentials_to_bytes
        public static func mIRToStakeCredentialsToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_MIRToStakeCredentials>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_m_i_r_to_stake_credentials_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_m_i_r_to_stake_credentials_from_bytes
        public static func mIRToStakeCredentialsFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_MIRToStakeCredentials> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_m_i_r_to_stake_credentials_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_m_i_r_to_stake_credentials_to_hex
        public static func mIRToStakeCredentialsToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_MIRToStakeCredentials>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_m_i_r_to_stake_credentials_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_m_i_r_to_stake_credentials_from_hex
        public static func mIRToStakeCredentialsFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_MIRToStakeCredentials> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_m_i_r_to_stake_credentials_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_m_i_r_to_stake_credentials_to_json
        public static func mIRToStakeCredentialsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_MIRToStakeCredentials>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_m_i_r_to_stake_credentials_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_m_i_r_to_stake_credentials_from_json
        public static func mIRToStakeCredentialsFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_MIRToStakeCredentials> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_m_i_r_to_stake_credentials_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_m_i_r_to_stake_credentials_new
        public static func mIRToStakeCredentialsNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_m_i_r_to_stake_credentials_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_m_i_r_to_stake_credentials_len
        public static func mIRToStakeCredentialsLen(self_rptr p1: OpaqueRustPointer<Types.CSL_MIRToStakeCredentials>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_m_i_r_to_stake_credentials_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_malformed_address_original_bytes
        public static func malformedAddressOriginalBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_MalformedAddress>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_malformed_address_original_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_malformed_address_to_address
        public static func malformedAddressToAddress(self_rptr p1: OpaqueRustPointer<Types.CSL_MalformedAddress>) throws -> OpaqueRustPointer<Types.CSL_Address> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_malformed_address_to_address(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_malformed_address_from_address
        public static func malformedAddressFromAddress(addr_rptr p1: OpaqueRustPointer<Types.CSL_Address>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_malformed_address_from_address(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_metadata_list_to_bytes
        public static func metadataListToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_MetadataList>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_metadata_list_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_metadata_list_from_bytes
        public static func metadataListFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_MetadataList> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_metadata_list_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_metadata_list_to_hex
        public static func metadataListToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_MetadataList>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_metadata_list_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_metadata_list_from_hex
        public static func metadataListFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_MetadataList> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_metadata_list_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_metadata_list_new
        public static func metadataListNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_metadata_list_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_metadata_list_len
        public static func metadataListLen(self_rptr p1: OpaqueRustPointer<Types.CSL_MetadataList>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_metadata_list_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_metadata_map_to_bytes
        public static func metadataMapToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_MetadataMap>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_metadata_map_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_metadata_map_from_bytes
        public static func metadataMapFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_MetadataMap> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_metadata_map_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_metadata_map_to_hex
        public static func metadataMapToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_MetadataMap>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_metadata_map_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_metadata_map_from_hex
        public static func metadataMapFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_MetadataMap> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_metadata_map_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_metadata_map_new
        public static func metadataMapNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_metadata_map_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_metadata_map_len
        public static func metadataMapLen(self_rptr p1: OpaqueRustPointer<Types.CSL_MetadataMap>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_metadata_map_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_metadata_map_has
        public static func metadataMapHas(self_rptr p1: OpaqueRustPointer<Types.CSL_MetadataMap>, key_rptr p2: OpaqueRustPointer<Types.CSL_TransactionMetadatum>) throws -> Bool {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_metadata_map_has(c_p1, c_p2, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mint_to_bytes
        public static func mintToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Mint>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_mint_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mint_from_bytes
        public static func mintFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Mint> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_mint_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mint_to_hex
        public static func mintToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Mint>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_mint_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mint_from_hex
        public static func mintFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Mint> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_mint_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mint_to_json
        public static func mintToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Mint>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_mint_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mint_from_json
        public static func mintFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Mint> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_mint_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mint_new
        public static func mintNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_mint_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mint_new_from_entry
        public static func mintNewFromEntry(key_rptr p1: OpaqueRustPointer<Types.CSL_ScriptHash>, value_rptr p2: OpaqueRustPointer<Types.CSL_MintAssets>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_mint_new_from_entry(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mint_len
        public static func mintLen(self_rptr p1: OpaqueRustPointer<Types.CSL_Mint>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_mint_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mint_assets_new
        public static func mintAssetsNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_mint_assets_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mint_assets_new_from_entry
        public static func mintAssetsNewFromEntry(key_rptr p1: OpaqueRustPointer<Types.CSL_AssetName>, value_rptr p2: OpaqueRustPointer<Types.CSL_Int>) throws -> OpaqueRustPointer<Types.CSL_MintAssets> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_mint_assets_new_from_entry(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mint_assets_len
        public static func mintAssetsLen(self_rptr p1: OpaqueRustPointer<Types.CSL_MintAssets>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_mint_assets_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mint_builder_new
        public static func mintBuilderNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_mint_builder_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mint_builder_has_plutus_scripts
        public static func mintBuilderHasPlutusScripts(self_rptr p1: OpaqueRustPointer<Types.CSL_MintBuilder>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_mint_builder_has_plutus_scripts(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mint_builder_has_native_scripts
        public static func mintBuilderHasNativeScripts(self_rptr p1: OpaqueRustPointer<Types.CSL_MintBuilder>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_mint_builder_has_native_scripts(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mint_witness_new_native_script
        public static func mintWitnessNewNativeScript(native_script_rptr p1: OpaqueRustPointer<Types.CSL_NativeScriptSource>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_mint_witness_new_native_script(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mint_witness_new_plutus_script
        public static func mintWitnessNewPlutusScript(plutus_script_rptr p1: OpaqueRustPointer<Types.CSL_PlutusScriptSource>, redeemer_rptr p2: OpaqueRustPointer<Types.CSL_Redeemer>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_mint_witness_new_plutus_script(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mints_assets_to_json
        public static func mintsAssetsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_MintsAssets>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_mints_assets_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mints_assets_from_json
        public static func mintsAssetsFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_MintsAssets> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_mints_assets_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mints_assets_new
        public static func mintsAssetsNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_mints_assets_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_mints_assets_len
        public static func mintsAssetsLen(self_rptr p1: OpaqueRustPointer<Types.CSL_MintsAssets>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_mints_assets_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_move_instantaneous_reward_to_bytes
        public static func moveInstantaneousRewardToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_MoveInstantaneousReward>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_move_instantaneous_reward_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_move_instantaneous_reward_from_bytes
        public static func moveInstantaneousRewardFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_MoveInstantaneousReward> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_move_instantaneous_reward_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_move_instantaneous_reward_to_hex
        public static func moveInstantaneousRewardToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_MoveInstantaneousReward>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_move_instantaneous_reward_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_move_instantaneous_reward_from_hex
        public static func moveInstantaneousRewardFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_MoveInstantaneousReward> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_move_instantaneous_reward_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_move_instantaneous_reward_to_json
        public static func moveInstantaneousRewardToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_MoveInstantaneousReward>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_move_instantaneous_reward_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_move_instantaneous_reward_from_json
        public static func moveInstantaneousRewardFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_MoveInstantaneousReward> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_move_instantaneous_reward_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_move_instantaneous_reward_new_to_other_pot
        public static func moveInstantaneousRewardNewToOtherPot(pot_int p1: Int32, amount_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_move_instantaneous_reward_new_to_other_pot(p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_move_instantaneous_reward_new_to_stake_creds
        public static func moveInstantaneousRewardNewToStakeCreds(pot_int p1: Int32, amounts_rptr p2: OpaqueRustPointer<Types.CSL_MIRToStakeCredentials>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_move_instantaneous_reward_new_to_stake_creds(p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_move_instantaneous_reward_pot
        public static func moveInstantaneousRewardPot(self_rptr p1: OpaqueRustPointer<Types.CSL_MoveInstantaneousReward>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_move_instantaneous_reward_pot(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_move_instantaneous_reward_kind
        public static func moveInstantaneousRewardKind(self_rptr p1: OpaqueRustPointer<Types.CSL_MoveInstantaneousReward>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_move_instantaneous_reward_kind(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_move_instantaneous_rewards_cert_to_bytes
        public static func moveInstantaneousRewardsCertToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_MoveInstantaneousRewardsCert>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_move_instantaneous_rewards_cert_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_move_instantaneous_rewards_cert_from_bytes
        public static func moveInstantaneousRewardsCertFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_MoveInstantaneousRewardsCert> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_move_instantaneous_rewards_cert_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_move_instantaneous_rewards_cert_to_hex
        public static func moveInstantaneousRewardsCertToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_MoveInstantaneousRewardsCert>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_move_instantaneous_rewards_cert_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_move_instantaneous_rewards_cert_from_hex
        public static func moveInstantaneousRewardsCertFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_MoveInstantaneousRewardsCert> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_move_instantaneous_rewards_cert_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_move_instantaneous_rewards_cert_to_json
        public static func moveInstantaneousRewardsCertToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_MoveInstantaneousRewardsCert>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_move_instantaneous_rewards_cert_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_move_instantaneous_rewards_cert_from_json
        public static func moveInstantaneousRewardsCertFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_MoveInstantaneousRewardsCert> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_move_instantaneous_rewards_cert_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_move_instantaneous_rewards_cert_new
        public static func moveInstantaneousRewardsCertNew(move_instantaneous_reward_rptr p1: OpaqueRustPointer<Types.CSL_MoveInstantaneousReward>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_move_instantaneous_rewards_cert_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_multi_asset_to_bytes
        public static func multiAssetToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_MultiAsset>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_multi_asset_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_multi_asset_from_bytes
        public static func multiAssetFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_MultiAsset> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_multi_asset_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_multi_asset_to_hex
        public static func multiAssetToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_MultiAsset>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_multi_asset_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_multi_asset_from_hex
        public static func multiAssetFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_MultiAsset> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_multi_asset_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_multi_asset_to_json
        public static func multiAssetToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_MultiAsset>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_multi_asset_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_multi_asset_from_json
        public static func multiAssetFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_MultiAsset> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_multi_asset_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_multi_asset_new
        public static func multiAssetNew() throws -> OpaqueRustPointer<Types.CSL_MultiAsset> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_multi_asset_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }

        // Swift Wrapper call to csl_bridge_multi_asset_insert
    public static func multiAssetInsert(self_rptr p1: OpaqueRustPointer<Types.CSL_MultiAsset>, policy p2: OpaqueRustPointer<Types.CSL_ScriptHash>, asset_rptr p3: OpaqueRustPointer<Types.CSL_Assets>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_multi_asset_insert(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }


        // Swift Wrapper call to csl_bridge_multi_asset_get
        public static func multiAssetGet(self_rptr p1: OpaqueRustPointer<Types.CSL_MultiAsset>, policy p2: OpaqueRustPointer<Types.CSL_ScriptHash>) throws -> OpaqueRustPointer<Types.CSL_Assets> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_multi_asset_get(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }


        

        // Swift Wrapper call to csl_bridge_multi_asset_len
        public static func multiAssetLen(self_rptr p1: OpaqueRustPointer<Types.CSL_MultiAsset>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_multi_asset_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_multi_asset_sub
        public static func multiAssetSub(self_rptr p1: OpaqueRustPointer<Types.CSL_MultiAsset>, rhs_ma_rptr p2: OpaqueRustPointer<Types.CSL_MultiAsset>) throws -> OpaqueRustPointer<Types.CSL_MultiAsset> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_multi_asset_sub(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_multi_host_name_to_bytes
        public static func multiHostNameToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_MultiHostName>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_multi_host_name_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_multi_host_name_from_bytes
        public static func multiHostNameFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_MultiHostName> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_multi_host_name_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_multi_host_name_to_hex
        public static func multiHostNameToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_MultiHostName>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_multi_host_name_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_multi_host_name_from_hex
        public static func multiHostNameFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_MultiHostName> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_multi_host_name_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_multi_host_name_to_json
        public static func multiHostNameToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_MultiHostName>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_multi_host_name_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_multi_host_name_from_json
        public static func multiHostNameFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_MultiHostName> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_multi_host_name_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_multi_host_name_new
        public static func multiHostNameNew(dns_name_rptr p1: OpaqueRustPointer<Types.CSL_DNSRecordSRV>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_multi_host_name_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_script_to_bytes
        public static func nativeScriptToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_NativeScript>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_native_script_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_script_from_bytes
        public static func nativeScriptFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_NativeScript> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_native_script_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_script_to_hex
        public static func nativeScriptToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_NativeScript>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_native_script_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_script_from_hex
        public static func nativeScriptFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_NativeScript> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_native_script_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_script_to_json
        public static func nativeScriptToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_NativeScript>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_native_script_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_script_from_json
        public static func nativeScriptFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_NativeScript> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_native_script_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_script_new_script_pubkey
        public static func nativeScriptNewScriptPubkey(script_pubkey_rptr p1: OpaqueRustPointer<Types.CSL_ScriptPubkey>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_native_script_new_script_pubkey(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_script_new_script_all
        public static func nativeScriptNewScriptAll(script_all_rptr p1: OpaqueRustPointer<Types.CSL_ScriptAll>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_native_script_new_script_all(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_script_new_script_any
        public static func nativeScriptNewScriptAny(script_any_rptr p1: OpaqueRustPointer<Types.CSL_ScriptAny>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_native_script_new_script_any(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_script_new_script_n_of_k
        public static func nativeScriptNewScriptNOfK(script_n_of_k_rptr p1: OpaqueRustPointer<Types.CSL_ScriptNOfK>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_native_script_new_script_n_of_k(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_script_new_timelock_start
        public static func nativeScriptNewTimelockStart(timelock_start_rptr p1: OpaqueRustPointer<Types.CSL_TimelockStart>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_native_script_new_timelock_start(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_script_new_timelock_expiry
        public static func nativeScriptNewTimelockExpiry(timelock_expiry_rptr p1: OpaqueRustPointer<Types.CSL_TimelockExpiry>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_native_script_new_timelock_expiry(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_script_kind
        public static func nativeScriptKind(self_rptr p1: OpaqueRustPointer<Types.CSL_NativeScript>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_native_script_kind(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_script_source_new
        public static func nativeScriptSourceNew(script_rptr p1: OpaqueRustPointer<Types.CSL_NativeScript>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_native_script_source_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_script_source_new_ref_input
        public static func nativeScriptSourceNewRefInput(script_hash_rptr p1: OpaqueRustPointer<Types.CSL_ScriptHash>, input_rptr p2: OpaqueRustPointer<Types.CSL_TransactionInput>, script_size_long p3: Int64) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_native_script_source_new_ref_input(c_p1, c_p2, p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_script_source_get_ref_script_size
        public static func nativeScriptSourceGetRefScriptSize(self_rptr p1: OpaqueRustPointer<Types.CSL_NativeScriptSource>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64  = 0
            var error: CharPtr? = nil
            let success = csl_bridge_native_script_source_get_ref_script_size(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_scripts_new
        public static func nativeScriptsNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_native_scripts_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_scripts_len
        public static func nativeScriptsLen(self_rptr p1: OpaqueRustPointer<Types.CSL_NativeScripts>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_native_scripts_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_scripts_to_bytes
        public static func nativeScriptsToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_NativeScripts>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_native_scripts_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
}
