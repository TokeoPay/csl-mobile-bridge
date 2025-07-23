import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension CSLKit {
// Swift Wrapper call to csl_bridge_certificate_as_drep_deregistration
        public static func certificateAsDrepDeregistration(self_rptr p1: OpaqueRustPointer<Types.CSL_Certificate>) throws -> OpaqueRustPointer<Types.CSL_DRepDeregistration> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_as_drep_deregistration(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_as_drep_registration
        public static func certificateAsDrepRegistration(self_rptr p1: OpaqueRustPointer<Types.CSL_Certificate>) throws -> OpaqueRustPointer<Types.CSL_DRepRegistration> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_as_drep_registration(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_as_drep_update
        public static func certificateAsDrepUpdate(self_rptr p1: OpaqueRustPointer<Types.CSL_Certificate>) throws -> OpaqueRustPointer<Types.CSL_DRepUpdate> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_as_drep_update(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificate_has_required_script_witness
        public static func certificateHasRequiredScriptWitness(self_rptr p1: OpaqueRustPointer<Types.CSL_Certificate>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_certificate_has_required_script_witness(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificates_to_bytes
        public static func certificatesToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Certificates>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_certificates_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificates_from_bytes
        public static func certificatesFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Certificates> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificates_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificates_to_hex
        public static func certificatesToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Certificates>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_certificates_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificates_from_hex
        public static func certificatesFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Certificates> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificates_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificates_to_json
        public static func certificatesToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Certificates>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_certificates_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificates_from_json
        public static func certificatesFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Certificates> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificates_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificates_new
        public static func certificatesNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificates_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificates_len
        public static func certificatesLen(self_rptr p1: OpaqueRustPointer<Types.CSL_Certificates>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_certificates_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificates_add
        public static func certificatesAdd(self_rptr p1: OpaqueRustPointer<Types.CSL_Certificates>, elem_rptr p2: OpaqueRustPointer<Types.CSL_Certificate>) throws -> Bool {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_certificates_add(c_p1, c_p2, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificates_builder_new
        public static func certificatesBuilderNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_certificates_builder_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_certificates_builder_has_plutus_scripts
        public static func certificatesBuilderHasPlutusScripts(self_rptr p1: OpaqueRustPointer<Types.CSL_CertificatesBuilder>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_certificates_builder_has_plutus_scripts(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_change_config_new
        public static func changeConfigNew(address_rptr p1: OpaqueRustPointer<Types.CSL_Address>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_change_config_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_to_bytes
        public static func committeeToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Committee>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_committee_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_from_bytes
        public static func committeeFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Committee> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_committee_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_to_hex
        public static func committeeToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Committee>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_committee_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_from_hex
        public static func committeeFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Committee> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_committee_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_to_json
        public static func committeeToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Committee>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_committee_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_from_json
        public static func committeeFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Committee> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_committee_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_new
        public static func committeeNew(quorum_threshold_rptr p1: OpaqueRustPointer<Types.CSL_UnitInterval>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_committee_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_get_member_epoch
//        public static func committeeGetMemberEpoch(self_rptr p1: OpaqueRustPointer<Types.CSL_Committee>, committee_cold_credential_rptr p2: OpaqueRustPointer<Types.CSL_Credential>) throws -> Int64? {
//            var c_p1 = p1.cPointer
//            var c_p2 = p2.cPointer
//            var result :Int64? = nil
//            var error: CharPtr? = nil
//            let success = csl_bridge_committee_get_member_epoch(c_p1, c_p2, &result, &error)
//            if success {
//                return result
//            } else {
//                throw createError(from: error)
//            }
//        }
        

        // Swift Wrapper call to csl_bridge_committee_cold_resign_to_bytes
        public static func committeeColdResignToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_CommitteeColdResign>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_committee_cold_resign_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_cold_resign_from_bytes
        public static func committeeColdResignFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_CommitteeColdResign> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_committee_cold_resign_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_cold_resign_to_hex
        public static func committeeColdResignToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_CommitteeColdResign>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_committee_cold_resign_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_cold_resign_from_hex
        public static func committeeColdResignFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_CommitteeColdResign> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_committee_cold_resign_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_cold_resign_to_json
        public static func committeeColdResignToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_CommitteeColdResign>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_committee_cold_resign_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_cold_resign_from_json
        public static func committeeColdResignFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_CommitteeColdResign> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_committee_cold_resign_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_cold_resign_anchor
        public static func committeeColdResignAnchor(self_rptr p1: OpaqueRustPointer<Types.CSL_CommitteeColdResign>) throws -> OpaqueRustPointer<Types.CSL_Anchor> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_committee_cold_resign_anchor(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_cold_resign_new
        public static func committeeColdResignNew(committee_cold_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_committee_cold_resign_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_cold_resign_new_with_anchor
        public static func committeeColdResignNewWithAnchor(committee_cold_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>, anchor_rptr p2: OpaqueRustPointer<Types.CSL_Anchor>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_committee_cold_resign_new_with_anchor(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_cold_resign_has_script_credentials
        public static func committeeColdResignHasScriptCredentials(self_rptr p1: OpaqueRustPointer<Types.CSL_CommitteeColdResign>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_committee_cold_resign_has_script_credentials(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_hot_auth_to_bytes
        public static func committeeHotAuthToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_CommitteeHotAuth>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_committee_hot_auth_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_hot_auth_from_bytes
        public static func committeeHotAuthFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_CommitteeHotAuth> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_committee_hot_auth_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_hot_auth_to_hex
        public static func committeeHotAuthToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_CommitteeHotAuth>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_committee_hot_auth_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_hot_auth_from_hex
        public static func committeeHotAuthFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_CommitteeHotAuth> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_committee_hot_auth_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_hot_auth_to_json
        public static func committeeHotAuthToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_CommitteeHotAuth>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_committee_hot_auth_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_hot_auth_from_json
        public static func committeeHotAuthFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_CommitteeHotAuth> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_committee_hot_auth_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_hot_auth_new
        public static func committeeHotAuthNew(committee_cold_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>, committee_hot_credential_rptr p2: OpaqueRustPointer<Types.CSL_Credential>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_committee_hot_auth_new(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_committee_hot_auth_has_script_credentials
        public static func committeeHotAuthHasScriptCredentials(self_rptr p1: OpaqueRustPointer<Types.CSL_CommitteeHotAuth>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_committee_hot_auth_has_script_credentials(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_constitution_to_bytes
        public static func constitutionToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Constitution>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_constitution_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_constitution_from_bytes
        public static func constitutionFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Constitution> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_constitution_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_constitution_to_hex
        public static func constitutionToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Constitution>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_constitution_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_constitution_from_hex
        public static func constitutionFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Constitution> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_constitution_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_constitution_to_json
        public static func constitutionToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Constitution>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_constitution_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_constitution_from_json
        public static func constitutionFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Constitution> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_constitution_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_constitution_anchor
        public static func constitutionAnchor(self_rptr p1: OpaqueRustPointer<Types.CSL_Constitution>) throws -> OpaqueRustPointer<Types.CSL_Anchor> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_constitution_anchor(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_constitution_new
        public static func constitutionNew(anchor_rptr p1: OpaqueRustPointer<Types.CSL_Anchor>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_constitution_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_constitution_new_with_script_hash
        public static func constitutionNewWithScriptHash(anchor_rptr p1: OpaqueRustPointer<Types.CSL_Anchor>, script_hash_rptr p2: OpaqueRustPointer<Types.CSL_ScriptHash>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_constitution_new_with_script_hash(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_constr_plutus_data_to_bytes
        public static func constrPlutusDataToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_ConstrPlutusData>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_constr_plutus_data_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_constr_plutus_data_from_bytes
        public static func constrPlutusDataFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_ConstrPlutusData> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_constr_plutus_data_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_constr_plutus_data_to_hex
        public static func constrPlutusDataToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_ConstrPlutusData>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_constr_plutus_data_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_constr_plutus_data_from_hex
        public static func constrPlutusDataFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ConstrPlutusData> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_constr_plutus_data_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_constr_plutus_data_alternative
        public static func constrPlutusDataAlternative(self_rptr p1: OpaqueRustPointer<Types.CSL_ConstrPlutusData>) throws -> OpaqueRustPointer<Types.CSL_BigNum> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_constr_plutus_data_alternative(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        
        // Swift Wrapper call to csl_bridge_credential_from_keyhash
        public static func credentialFromKeyhash(hash_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>) throws -> OpaqueRustPointer<Types.CSL_Credential> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_credential_from_keyhash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credential_from_scripthash
        public static func credentialFromScripthash(hash_rptr p1: OpaqueRustPointer<Types.CSL_ScriptHash>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_credential_from_scripthash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credential_to_keyhash
        public static func credentialToKeyhash(self_rptr p1: OpaqueRustPointer<Types.CSL_Credential>) throws -> OpaqueRustPointer<Types.CSL_Ed25519KeyHash> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_credential_to_keyhash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credential_to_scripthash
        public static func credentialToScripthash(self_rptr p1: OpaqueRustPointer<Types.CSL_Credential>) throws -> OpaqueRustPointer<Types.CSL_ScriptHash> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_credential_to_scripthash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credential_kind
        public static func credentialKind(self_rptr p1: OpaqueRustPointer<Types.CSL_Credential>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_credential_kind(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credential_has_script_hash
        public static func credentialHasScriptHash(self_rptr p1: OpaqueRustPointer<Types.CSL_Credential>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_credential_has_script_hash(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credential_to_bytes
        public static func credentialToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Credential>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_credential_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credential_from_bytes
        public static func credentialFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Credential> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_credential_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credential_to_hex
        public static func credentialToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Credential>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_credential_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credential_from_hex
        public static func credentialFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Credential> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_credential_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credential_to_json
        public static func credentialToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Credential>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_credential_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credential_from_json
        public static func credentialFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Credential> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_credential_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credentials_to_bytes
        public static func credentialsToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Credentials>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_credentials_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credentials_from_bytes
        public static func credentialsFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Credentials> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_credentials_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credentials_to_hex
        public static func credentialsToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Credentials>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_credentials_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credentials_from_hex
        public static func credentialsFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Credentials> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_credentials_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credentials_to_json
        public static func credentialsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Credentials>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_credentials_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credentials_from_json
        public static func credentialsFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Credentials> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_credentials_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credentials_new
        public static func credentialsNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_credentials_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credentials_len
        public static func credentialsLen(self_rptr p1: OpaqueRustPointer<Types.CSL_Credentials>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_credentials_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_credentials_add
        public static func credentialsAdd(self_rptr p1: OpaqueRustPointer<Types.CSL_Credentials>, credential_rptr p2: OpaqueRustPointer<Types.CSL_Credential>) throws -> Bool {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_credentials_add(c_p1, c_p2, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_n_s_record_aor_a_a_a_a_to_bytes
        public static func dNSRecordAorAAAAToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_DNSRecordAorAAAA>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_d_n_s_record_aor_a_a_a_a_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_n_s_record_aor_a_a_a_a_from_bytes
        public static func dNSRecordAorAAAAFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_DNSRecordAorAAAA> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_n_s_record_aor_a_a_a_a_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_n_s_record_aor_a_a_a_a_to_hex
        public static func dNSRecordAorAAAAToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_DNSRecordAorAAAA>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_d_n_s_record_aor_a_a_a_a_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_n_s_record_aor_a_a_a_a_from_hex
        public static func dNSRecordAorAAAAFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DNSRecordAorAAAA> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_n_s_record_aor_a_a_a_a_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_n_s_record_aor_a_a_a_a_to_json
        public static func dNSRecordAorAAAAToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_DNSRecordAorAAAA>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_d_n_s_record_aor_a_a_a_a_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_d_n_s_record_aor_a_a_a_a_from_json
        public static func dNSRecordAorAAAAFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_DNSRecordAorAAAA> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_d_n_s_record_aor_a_a_a_a_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
}
