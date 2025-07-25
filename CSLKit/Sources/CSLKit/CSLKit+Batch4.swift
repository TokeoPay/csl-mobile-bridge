import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension CSLKit {
// Swift Wrapper call to csl_bridge_d_n_s_record_aor_a_a_a_a_new
        public static func dNSRecordAorAAAANew(dns_name_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DNSRecordAorAAAA> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_n_s_record_aor_a_a_a_a_new(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_n_s_record_aor_a_a_a_a_record
        public static func dNSRecordAorAAAARecord(self_rptr p1: OpaqueRustPointer<Types.CSL_DNSRecordAorAAAA>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_d_n_s_record_aor_a_a_a_a_record(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_n_s_record_s_r_v_to_bytes
        public static func dNSRecordSRVToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_DNSRecordSRV>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_d_n_s_record_s_r_v_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_n_s_record_s_r_v_from_bytes
        public static func dNSRecordSRVFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_DNSRecordSRV> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_n_s_record_s_r_v_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_n_s_record_s_r_v_to_hex
        public static func dNSRecordSRVToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_DNSRecordSRV>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_d_n_s_record_s_r_v_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_n_s_record_s_r_v_from_hex
        public static func dNSRecordSRVFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DNSRecordSRV> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_n_s_record_s_r_v_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_n_s_record_s_r_v_to_json
        public static func dNSRecordSRVToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_DNSRecordSRV>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_d_n_s_record_s_r_v_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_n_s_record_s_r_v_from_json
        public static func dNSRecordSRVFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DNSRecordSRV> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_n_s_record_s_r_v_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_n_s_record_s_r_v_new
        public static func dNSRecordSRVNew(dns_name_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DNSRecordSRV> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_n_s_record_s_r_v_new(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_n_s_record_s_r_v_record
        public static func dNSRecordSRVRecord(self_rptr p1: OpaqueRustPointer<Types.CSL_DNSRecordSRV>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_d_n_s_record_s_r_v_record(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_to_bytes
        public static func dRepToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_DRep>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_from_bytes
        public static func dRepFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_DRep> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_to_hex
        public static func dRepToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_DRep>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_from_hex
        public static func dRepFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DRep> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_to_json
        public static func dRepToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_DRep>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_from_json
        public static func dRepFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DRep> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_new_key_hash
        public static func dRepNewKeyHash(key_hash_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_new_key_hash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_new_script_hash
        public static func dRepNewScriptHash(script_hash_rptr p1: OpaqueRustPointer<Types.CSL_ScriptHash>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_new_script_hash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_new_always_abstain
        public static func dRepNewAlwaysAbstain() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_new_always_abstain(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_new_always_no_confidence
        public static func dRepNewAlwaysNoConfidence() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_new_always_no_confidence(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_new_from_credential
        public static func dRepNewFromCredential(cred_rptr p1: OpaqueRustPointer<Types.CSL_Credential>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_new_from_credential(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_kind
        public static func dRepKind(self_rptr p1: OpaqueRustPointer<Types.CSL_DRep>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_kind(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_to_key_hash
        public static func dRepToKeyHash(self_rptr p1: OpaqueRustPointer<Types.CSL_DRep>) throws -> OpaqueRustPointer<Types.CSL_KeyHash> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_to_key_hash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_to_script_hash
        public static func dRepToScriptHash(self_rptr p1: OpaqueRustPointer<Types.CSL_DRep>) throws -> OpaqueRustPointer<Types.CSL_ScriptHash> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_to_script_hash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_to_bech32
        public static func dRepToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_DRep>, cip_129_format p2: Bool) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_to_bech32(c_p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_from_bech32
        public static func dRepFromBech32(bech32_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DRep> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_from_bech32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_deregistration_to_bytes
        public static func dRepDeregistrationToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepDeregistration>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_deregistration_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_deregistration_from_bytes
        public static func dRepDeregistrationFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_DRepDeregistration> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_deregistration_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_deregistration_to_hex
        public static func dRepDeregistrationToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepDeregistration>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_deregistration_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_deregistration_from_hex
        public static func dRepDeregistrationFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DRepDeregistration> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_deregistration_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_deregistration_to_json
        public static func dRepDeregistrationToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepDeregistration>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_deregistration_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_deregistration_from_json
        public static func dRepDeregistrationFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DRepDeregistration> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_deregistration_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_deregistration_voting_credential
        public static func dRepDeregistrationVotingCredential(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepDeregistration>) throws -> OpaqueRustPointer<Types.CSL_Credential> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_deregistration_voting_credential(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_deregistration_new
        public static func dRepDeregistrationNew(voting_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>, coin_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_deregistration_new(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_deregistration_has_script_credentials
        public static func dRepDeregistrationHasScriptCredentials(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepDeregistration>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_deregistration_has_script_credentials(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_registration_to_bytes
        public static func dRepRegistrationToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepRegistration>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_registration_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_registration_from_bytes
        public static func dRepRegistrationFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_DRepRegistration> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_registration_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_registration_to_hex
        public static func dRepRegistrationToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepRegistration>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_registration_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_registration_from_hex
        public static func dRepRegistrationFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DRepRegistration> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_registration_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_registration_to_json
        public static func dRepRegistrationToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepRegistration>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_registration_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_registration_from_json
        public static func dRepRegistrationFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DRepRegistration> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_registration_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_registration_voting_credential
        public static func dRepRegistrationVotingCredential(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepRegistration>) throws -> OpaqueRustPointer<Types.CSL_Credential> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_registration_voting_credential(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_registration_anchor
        public static func dRepRegistrationAnchor(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepRegistration>) throws -> OpaqueRustPointer<Types.CSL_Anchor> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_registration_anchor(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_registration_new
        public static func dRepRegistrationNew(voting_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>, coin_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_registration_new(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_registration_new_with_anchor
        public static func dRepRegistrationNewWithAnchor(voting_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>, coin_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>, anchor_rptr p3: OpaqueRustPointer<Types.CSL_Anchor>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_registration_new_with_anchor(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_registration_has_script_credentials
        public static func dRepRegistrationHasScriptCredentials(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepRegistration>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_registration_has_script_credentials(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_update_to_bytes
        public static func dRepUpdateToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepUpdate>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_update_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_update_from_bytes
        public static func dRepUpdateFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_DRepUpdate> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_update_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_update_to_hex
        public static func dRepUpdateToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepUpdate>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_update_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_update_from_hex
        public static func dRepUpdateFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DRepUpdate> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_update_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_update_to_json
        public static func dRepUpdateToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepUpdate>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_update_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_update_from_json
        public static func dRepUpdateFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DRepUpdate> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_update_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_update_voting_credential
        public static func dRepUpdateVotingCredential(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepUpdate>) throws -> OpaqueRustPointer<Types.CSL_Credential> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_update_voting_credential(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_update_anchor
        public static func dRepUpdateAnchor(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepUpdate>) throws -> OpaqueRustPointer<Types.CSL_Anchor> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_update_anchor(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_update_new
        public static func dRepUpdateNew(voting_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_update_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_update_new_with_anchor
        public static func dRepUpdateNewWithAnchor(voting_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>, anchor_rptr p2: OpaqueRustPointer<Types.CSL_Anchor>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_update_new_with_anchor(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_update_has_script_credentials
        public static func dRepUpdateHasScriptCredentials(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepUpdate>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_update_has_script_credentials(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_voting_thresholds_to_bytes
        public static func dRepVotingThresholdsToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepVotingThresholds>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_voting_thresholds_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_voting_thresholds_from_bytes
        public static func dRepVotingThresholdsFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_DRepVotingThresholds> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_voting_thresholds_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_voting_thresholds_to_hex
        public static func dRepVotingThresholdsToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepVotingThresholds>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_voting_thresholds_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_voting_thresholds_from_hex
        public static func dRepVotingThresholdsFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DRepVotingThresholds> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_voting_thresholds_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_voting_thresholds_to_json
        public static func dRepVotingThresholdsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepVotingThresholds>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_voting_thresholds_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_voting_thresholds_from_json
        public static func dRepVotingThresholdsFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DRepVotingThresholds> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_voting_thresholds_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_voting_thresholds_new
        public static func dRepVotingThresholdsNew(motion_no_confidence_rptr p1: OpaqueRustPointer<Types.CSL_UnitInterval>, committee_normal_rptr p2: OpaqueRustPointer<Types.CSL_UnitInterval>, committee_no_confidence_rptr p3: OpaqueRustPointer<Types.CSL_UnitInterval>, update_constitution_rptr p4: OpaqueRustPointer<Types.CSL_UnitInterval>, hard_fork_initiation_rptr p5: OpaqueRustPointer<Types.CSL_UnitInterval>, pp_network_group_rptr p6: OpaqueRustPointer<Types.CSL_UnitInterval>, pp_economic_group_rptr p7: OpaqueRustPointer<Types.CSL_UnitInterval>, pp_technical_group_rptr p8: OpaqueRustPointer<Types.CSL_UnitInterval>, pp_governance_group_rptr p9: OpaqueRustPointer<Types.CSL_UnitInterval>, treasury_withdrawal_rptr p10: OpaqueRustPointer<Types.CSL_UnitInterval>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            let c_p4 = p4.cPointer
            let c_p5 = p5.cPointer
            let c_p6 = p6.cPointer
            let c_p7 = p7.cPointer
            let c_p8 = p8.cPointer
            let c_p9 = p9.cPointer
            let c_p10 = p10.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_voting_thresholds_new(c_p1, c_p2, c_p3, c_p4, c_p5, c_p6, c_p7, c_p8, c_p9, c_p10, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_voting_thresholds_update_constitution
        public static func dRepVotingThresholdsUpdateConstitution(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepVotingThresholds>) throws -> OpaqueRustPointer<Types.CSL_UnitInterval> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_voting_thresholds_update_constitution(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_rep_voting_thresholds_treasury_withdrawal
        public static func dRepVotingThresholdsTreasuryWithdrawal(self_rptr p1: OpaqueRustPointer<Types.CSL_DRepVotingThresholds>) throws -> OpaqueRustPointer<Types.CSL_UnitInterval> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_rep_voting_thresholds_treasury_withdrawal(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_data_cost_new_coins_per_byte
        public static func dataCostNewCoinsPerByte(coins_per_byte_rptr p1: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_data_cost_new_coins_per_byte(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_data_hash_from_bytes
        public static func dataHashFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_DataHash> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_data_hash_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_data_hash_to_bytes
        public static func dataHashToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_DataHash>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_data_hash_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_data_hash_to_bech32
        public static func dataHashToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_DataHash>, prefix_str p2: String) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_data_hash_to_bech32(c_p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_data_hash_from_bech32
        public static func dataHashFromBech32(bech_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DataHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_data_hash_from_bech32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_data_hash_to_hex
        public static func dataHashToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_DataHash>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_data_hash_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_data_hash_from_hex
        public static func dataHashFromHex(hex_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DataHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_data_hash_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_datum_source_new
        public static func datumSourceNew(datum_rptr p1: OpaqueRustPointer<Types.CSL_PlutusData>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_datum_source_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_datum_source_new_ref_input
        public static func datumSourceNewRefInput(input_rptr p1: OpaqueRustPointer<Types.CSL_TransactionInput>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_datum_source_new_ref_input(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_key_hash_from_bytes
        public static func ed25519KeyHashFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Ed25519KeyHash> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_key_hash_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_key_hash_to_bytes
        public static func ed25519KeyHashToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_key_hash_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_key_hash_to_bech32
        public static func ed25519KeyHashToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>, prefix_str p2: String) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_key_hash_to_bech32(c_p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_key_hash_from_bech32
        public static func ed25519KeyHashFromBech32(bech_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Ed25519KeyHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_key_hash_from_bech32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_key_hash_to_hex
        public static func ed25519KeyHashToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_key_hash_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
    
        

        // Swift Wrapper call to csl_bridge_ed25519_key_hash_from_hex
        public static func ed25519KeyHashFromHex(hex_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Ed25519KeyHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_key_hash_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_key_hashes_to_bytes
        public static func ed25519KeyHashesToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519KeyHashes>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_key_hashes_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_key_hashes_from_bytes
        public static func ed25519KeyHashesFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Ed25519KeyHashes> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_key_hashes_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_key_hashes_to_hex
        public static func ed25519KeyHashesToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519KeyHashes>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_key_hashes_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_key_hashes_from_hex
        public static func ed25519KeyHashesFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Ed25519KeyHashes> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_key_hashes_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_key_hashes_to_json
        public static func ed25519KeyHashesToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519KeyHashes>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_key_hashes_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_key_hashes_from_json
        public static func ed25519KeyHashesFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Ed25519KeyHashes> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_key_hashes_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_key_hashes_new
        public static func ed25519KeyHashesNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_key_hashes_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_key_hashes_len
        public static func ed25519KeyHashesLen(self_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519KeyHashes>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_key_hashes_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_key_hashes_add
        public static func ed25519KeyHashesAdd(self_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519KeyHashes>, keyhash_rptr p2: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>) throws -> Bool {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_key_hashes_add(c_p1, c_p2, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_key_hashes_contains
        public static func ed25519KeyHashesContains(self_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519KeyHashes>, elem_rptr p2: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>) throws -> Bool {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_key_hashes_contains(c_p1, c_p2, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_signature_to_bytes
        public static func ed25519SignatureToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519Signature>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_signature_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_signature_to_bech32
        public static func ed25519SignatureToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519Signature>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_signature_to_bech32(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_signature_to_hex
        public static func ed25519SignatureToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519Signature>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_signature_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_signature_from_bech32
        public static func ed25519SignatureFromBech32(bech32_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Ed25519Signature> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_signature_from_bech32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_signature_from_hex
        public static func ed25519SignatureFromHex(input_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Ed25519Signature> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_signature_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ed25519_signature_from_bytes
        public static func ed25519SignatureFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Ed25519Signature> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ed25519_signature_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_enterprise_address_new
        public static func enterpriseAddressNew(network_long p1: Int64, payment_rptr p2: OpaqueRustPointer<Types.CSL_Credential>) throws -> OpaqueRustPointer<Types.CSL_EnterpriseAddress> {
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_enterprise_address_new(p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_enterprise_address_payment_cred
        public static func enterpriseAddressPaymentCred(self_rptr p1: OpaqueRustPointer<Types.CSL_EnterpriseAddress>) throws -> OpaqueRustPointer<Types.CSL_PaymentCred> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_enterprise_address_payment_cred(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_enterprise_address_to_address
        public static func enterpriseAddressToAddress(self_rptr p1: OpaqueRustPointer<Types.CSL_EnterpriseAddress>) throws -> OpaqueRustPointer<Types.CSL_Address> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_enterprise_address_to_address(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
}
