import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension CSLKit {
// Swift Wrapper call to csl_bridge_proposed_protocol_parameter_updates_from_json
        public static func proposedProtocolParameterUpdatesFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ProposedProtocolParameterUpdates> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_proposed_protocol_parameter_updates_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_proposed_protocol_parameter_updates_new
        public static func proposedProtocolParameterUpdatesNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_proposed_protocol_parameter_updates_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_proposed_protocol_parameter_updates_len
        public static func proposedProtocolParameterUpdatesLen(self_rptr p1: OpaqueRustPointer<Types.CSL_ProposedProtocolParameterUpdates>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_proposed_protocol_parameter_updates_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_to_bytes
        public static func protocolParamUpdateToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_from_bytes
        public static func protocolParamUpdateFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_ProtocolParamUpdate> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_to_hex
        public static func protocolParamUpdateToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_from_hex
        public static func protocolParamUpdateFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ProtocolParamUpdate> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_to_json
        public static func protocolParamUpdateToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_from_json
        public static func protocolParamUpdateFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ProtocolParamUpdate> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_max_block_body_size
        public static func protocolParamUpdateMaxBlockBodySize(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_max_block_body_size(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_max_tx_size
        public static func protocolParamUpdateMaxTxSize(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_max_tx_size(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_max_block_header_size
        public static func protocolParamUpdateMaxBlockHeaderSize(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_max_block_header_size(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_max_epoch
        public static func protocolParamUpdateMaxEpoch(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_max_epoch(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_n_opt
        public static func protocolParamUpdateNOpt(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_n_opt(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_treasury_growth_rate
        public static func protocolParamUpdateTreasuryGrowthRate(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> OpaqueRustPointer<Types.CSL_UnitInterval> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_treasury_growth_rate(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_ada_per_utxo_byte
        public static func protocolParamUpdateAdaPerUtxoByte(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> OpaqueRustPointer<Types.CSL_BigNum> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_ada_per_utxo_byte(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_max_value_size
        public static func protocolParamUpdateMaxValueSize(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_max_value_size(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_collateral_percentage
        public static func protocolParamUpdateCollateralPercentage(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_collateral_percentage(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_max_collateral_inputs
        public static func protocolParamUpdateMaxCollateralInputs(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_max_collateral_inputs(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_min_committee_size
        public static func protocolParamUpdateMinCommitteeSize(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_min_committee_size(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_committee_term_limit
        public static func protocolParamUpdateCommitteeTermLimit(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_committee_term_limit(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_governance_action_validity_period
        public static func protocolParamUpdateGovernanceActionValidityPeriod(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_governance_action_validity_period(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_drep_inactivity_period
        public static func protocolParamUpdateDrepInactivityPeriod(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_drep_inactivity_period(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_param_update_new
        public static func protocolParamUpdateNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_param_update_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_version_to_bytes
        public static func protocolVersionToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolVersion>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_version_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_version_from_bytes
        public static func protocolVersionFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_ProtocolVersion> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_version_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_version_to_hex
        public static func protocolVersionToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolVersion>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_version_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_version_from_hex
        public static func protocolVersionFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ProtocolVersion> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_version_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_version_to_json
        public static func protocolVersionToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolVersion>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_version_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_version_from_json
        public static func protocolVersionFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ProtocolVersion> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_version_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_version_major
        public static func protocolVersionMajor(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolVersion>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_version_major(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_version_minor
        public static func protocolVersionMinor(self_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolVersion>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_version_minor(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_protocol_version_new
        public static func protocolVersionNew(major_long p1: Int64, minor_long p2: Int64) throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_protocol_version_new(p1, p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }


        //Swift Wrapper call to csl_bridge_public_key_hash
        public static func publicKeyHash(self_rptr p1: OpaqueRustPointer<Types.CSL_PublicKey>) throws -> OpaqueRustPointer<Types.CSL_Ed25519KeyHash> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_public_key_hash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }






        // Swift Wrapper call to csl_bridge_public_key_from_bech32
        public static func publicKeyFromBech32(bech32_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PublicKey> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_public_key_from_bech32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_public_key_to_bech32
        public static func publicKeyToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_PublicKey>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_public_key_to_bech32(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_public_key_as_bytes
        public static func publicKeyAsBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_PublicKey>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_public_key_as_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_public_key_from_bytes
        public static func publicKeyFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_PublicKey> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_public_key_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_public_key_verify
        public static func publicKeyVerify(self_rptr p1: OpaqueRustPointer<Types.CSL_PublicKey>, data_data p2: Data, signature_rptr p4: OpaqueRustPointer<Types.CSL_Ed25519Signature>) throws -> Bool {
            let c_p1 = p1.cPointer
            var c_p2_ptr = p2.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p2_len = UInt(p2.count)
            let c_p4 = p4.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_public_key_verify(c_p1, &c_p2_ptr, c_p2_len, c_p4, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_public_key_to_hex
        public static func publicKeyToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_PublicKey>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_public_key_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_public_key_from_hex
        public static func publicKeyFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PublicKey> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_public_key_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_public_keys_new
        public static func publicKeysNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_public_keys_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_public_keys_size
        public static func publicKeysSize(self_rptr p1: OpaqueRustPointer<Types.CSL_PublicKeys>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_public_keys_size(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_to_bytes
        public static func redeemerToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Redeemer>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_from_bytes
        public static func redeemerFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Redeemer> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_to_hex
        public static func redeemerToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Redeemer>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_from_hex
        public static func redeemerFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Redeemer> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_to_json
        public static func redeemerToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Redeemer>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_from_json
        public static func redeemerFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Redeemer> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_tag
        public static func redeemerTag(self_rptr p1: OpaqueRustPointer<Types.CSL_Redeemer>) throws -> OpaqueRustPointer<Types.CSL_RedeemerTag> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_tag(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_new
        public static func redeemerNew(tag_rptr p1: OpaqueRustPointer<Types.CSL_RedeemerTag>, index_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>, data_rptr p3: OpaqueRustPointer<Types.CSL_PlutusData>, ex_units_rptr p4: OpaqueRustPointer<Types.CSL_ExUnits>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            let c_p4 = p4.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_new(c_p1, c_p2, c_p3, c_p4, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_tag_to_bytes
        public static func redeemerTagToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_RedeemerTag>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_tag_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_tag_from_bytes
        public static func redeemerTagFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_RedeemerTag> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_tag_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_tag_to_hex
        public static func redeemerTagToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_RedeemerTag>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_tag_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_tag_from_hex
        public static func redeemerTagFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_RedeemerTag> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_tag_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_tag_to_json
        public static func redeemerTagToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_RedeemerTag>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_tag_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_tag_from_json
        public static func redeemerTagFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_RedeemerTag> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_tag_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_tag_new_spend
        public static func redeemerTagNewSpend() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_tag_new_spend(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_tag_new_mint
        public static func redeemerTagNewMint() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_tag_new_mint(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_tag_new_cert
        public static func redeemerTagNewCert() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_tag_new_cert(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_tag_new_reward
        public static func redeemerTagNewReward() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_tag_new_reward(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_tag_new_vote
        public static func redeemerTagNewVote() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_tag_new_vote(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_tag_new_voting_proposal
        public static func redeemerTagNewVotingProposal() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_tag_new_voting_proposal(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemer_tag_kind
        public static func redeemerTagKind(self_rptr p1: OpaqueRustPointer<Types.CSL_RedeemerTag>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_redeemer_tag_kind(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemers_to_bytes
        public static func redeemersToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Redeemers>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_redeemers_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemers_from_bytes
        public static func redeemersFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Redeemers> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemers_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemers_to_hex
        public static func redeemersToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Redeemers>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_redeemers_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemers_from_hex
        public static func redeemersFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Redeemers> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemers_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemers_to_json
        public static func redeemersToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Redeemers>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_redeemers_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemers_from_json
        public static func redeemersFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Redeemers> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemers_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemers_new
        public static func redeemersNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemers_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemers_len
        public static func redeemersLen(self_rptr p1: OpaqueRustPointer<Types.CSL_Redeemers>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_redeemers_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemers_get_container_type
        public static func redeemersGetContainerType(self_rptr p1: OpaqueRustPointer<Types.CSL_Redeemers>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_redeemers_get_container_type(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_redeemers_total_ex_units
        public static func redeemersTotalExUnits(self_rptr p1: OpaqueRustPointer<Types.CSL_Redeemers>) throws -> OpaqueRustPointer<Types.CSL_ExUnits> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_redeemers_total_ex_units(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relay_to_bytes
        public static func relayToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Relay>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_relay_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relay_from_bytes
        public static func relayFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Relay> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_relay_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relay_to_hex
        public static func relayToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Relay>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_relay_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relay_from_hex
        public static func relayFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Relay> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_relay_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relay_to_json
        public static func relayToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Relay>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_relay_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relay_from_json
        public static func relayFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Relay> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_relay_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relay_new_single_host_addr
        public static func relayNewSingleHostAddr(single_host_addr_rptr p1: OpaqueRustPointer<Types.CSL_SingleHostAddr>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_relay_new_single_host_addr(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relay_new_single_host_name
        public static func relayNewSingleHostName(single_host_name_rptr p1: OpaqueRustPointer<Types.CSL_SingleHostName>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_relay_new_single_host_name(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relay_new_multi_host_name
        public static func relayNewMultiHostName(multi_host_name_rptr p1: OpaqueRustPointer<Types.CSL_MultiHostName>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_relay_new_multi_host_name(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relay_kind
        public static func relayKind(self_rptr p1: OpaqueRustPointer<Types.CSL_Relay>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_relay_kind(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relays_to_bytes
        public static func relaysToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Relays>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_relays_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relays_from_bytes
        public static func relaysFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Relays> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_relays_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relays_to_hex
        public static func relaysToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Relays>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_relays_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relays_from_hex
        public static func relaysFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Relays> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_relays_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relays_to_json
        public static func relaysToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Relays>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_relays_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relays_from_json
        public static func relaysFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Relays> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_relays_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relays_new
        public static func relaysNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_relays_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_relays_len
        public static func relaysLen(self_rptr p1: OpaqueRustPointer<Types.CSL_Relays>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_relays_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_reward_address_new
        public static func rewardAddressNew(network_long p1: Int64, payment_rptr p2: OpaqueRustPointer<Types.CSL_Credential>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_reward_address_new(p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_reward_address_payment_cred
        public static func rewardAddressPaymentCred(self_rptr p1: OpaqueRustPointer<Types.CSL_RewardAddress>) throws -> OpaqueRustPointer<Types.CSL_PaymentCred> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_reward_address_payment_cred(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_reward_address_to_address
        public static func rewardAddressToAddress(self_rptr p1: OpaqueRustPointer<Types.CSL_RewardAddress>) throws -> OpaqueRustPointer<Types.CSL_Address> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_reward_address_to_address(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_reward_address_from_address
        public static func rewardAddressFromAddress(addr_rptr p1: OpaqueRustPointer<Types.CSL_Address>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_reward_address_from_address(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_reward_address_network_id
        public static func rewardAddressNetworkId(self_rptr p1: OpaqueRustPointer<Types.CSL_RewardAddress>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_reward_address_network_id(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_reward_addresses_to_bytes
        public static func rewardAddressesToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_RewardAddresses>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_reward_addresses_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_reward_addresses_from_bytes
        public static func rewardAddressesFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_RewardAddresses> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_reward_addresses_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_reward_addresses_to_hex
        public static func rewardAddressesToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_RewardAddresses>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_reward_addresses_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_reward_addresses_from_hex
        public static func rewardAddressesFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_RewardAddresses> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_reward_addresses_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
}
