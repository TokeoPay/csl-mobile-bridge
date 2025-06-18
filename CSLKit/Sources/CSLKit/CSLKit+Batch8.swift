import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension CSLKit {
// Swift Wrapper call to csl_bridge_native_scripts_from_bytes
        public static func nativeScriptsFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_NativeScripts> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_native_scripts_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_scripts_to_hex
        public static func nativeScriptsToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_NativeScripts>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_native_scripts_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_scripts_from_hex
        public static func nativeScriptsFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_NativeScripts> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_native_scripts_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_scripts_to_json
        public static func nativeScriptsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_NativeScripts>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_native_scripts_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_native_scripts_from_json
        public static func nativeScriptsFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_NativeScripts> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_native_scripts_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_network_id_to_bytes
        public static func networkIdToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_NetworkId>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_network_id_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_network_id_from_bytes
        public static func networkIdFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_NetworkId> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_network_id_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_network_id_to_hex
        public static func networkIdToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_NetworkId>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_network_id_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_network_id_from_hex
        public static func networkIdFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_NetworkId> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_network_id_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_network_id_to_json
        public static func networkIdToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_NetworkId>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_network_id_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_network_id_from_json
        public static func networkIdFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_NetworkId> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_network_id_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_network_id_testnet
        public static func networkIdTestnet() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_network_id_testnet(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_network_id_mainnet
        public static func networkIdMainnet() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_network_id_mainnet(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_network_id_kind
        public static func networkIdKind(self_rptr p1: OpaqueRustPointer<Types.CSL_NetworkId>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_network_id_kind(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_network_info_new
        public static func networkInfoNew(network_id_long p1: Int64, protocol_magic_long p2: Int64) throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_network_info_new(p1, p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_network_info_network_id
        public static func networkInfoNetworkId(self_rptr p1: OpaqueRustPointer<Types.CSL_NetworkInfo>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_network_info_network_id(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_network_info_protocol_magic
        public static func networkInfoProtocolMagic(self_rptr p1: OpaqueRustPointer<Types.CSL_NetworkInfo>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_network_info_protocol_magic(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_network_info_testnet_preview
        public static func networkInfoTestnetPreview() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_network_info_testnet_preview(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_network_info_testnet_preprod
        public static func networkInfoTestnetPreprod() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_network_info_testnet_preprod(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_network_info_mainnet
        public static func networkInfoMainnet() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_network_info_mainnet(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_new_constitution_action_to_bytes
        public static func newConstitutionActionToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_NewConstitutionAction>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_new_constitution_action_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_new_constitution_action_from_bytes
        public static func newConstitutionActionFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_NewConstitutionAction> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_new_constitution_action_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_new_constitution_action_to_hex
        public static func newConstitutionActionToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_NewConstitutionAction>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_new_constitution_action_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_new_constitution_action_from_hex
        public static func newConstitutionActionFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_NewConstitutionAction> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_new_constitution_action_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_new_constitution_action_to_json
        public static func newConstitutionActionToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_NewConstitutionAction>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_new_constitution_action_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_new_constitution_action_from_json
        public static func newConstitutionActionFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_NewConstitutionAction> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_new_constitution_action_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_new_constitution_action_new
        public static func newConstitutionActionNew(constitution_rptr p1: OpaqueRustPointer<Types.CSL_Constitution>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_new_constitution_action_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_new_constitution_action_new_with_action_id
        public static func newConstitutionActionNewWithActionId(gov_action_id_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceActionId>, constitution_rptr p2: OpaqueRustPointer<Types.CSL_Constitution>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_new_constitution_action_new_with_action_id(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_new_constitution_action_has_script_hash
        public static func newConstitutionActionHasScriptHash(self_rptr p1: OpaqueRustPointer<Types.CSL_NewConstitutionAction>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_new_constitution_action_has_script_hash(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_no_confidence_action_to_bytes
        public static func noConfidenceActionToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_NoConfidenceAction>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_no_confidence_action_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_no_confidence_action_from_bytes
        public static func noConfidenceActionFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_NoConfidenceAction> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_no_confidence_action_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_no_confidence_action_to_hex
        public static func noConfidenceActionToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_NoConfidenceAction>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_no_confidence_action_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_no_confidence_action_from_hex
        public static func noConfidenceActionFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_NoConfidenceAction> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_no_confidence_action_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_no_confidence_action_to_json
        public static func noConfidenceActionToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_NoConfidenceAction>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_no_confidence_action_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_no_confidence_action_from_json
        public static func noConfidenceActionFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_NoConfidenceAction> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_no_confidence_action_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_no_confidence_action_new
        public static func noConfidenceActionNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_no_confidence_action_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_no_confidence_action_new_with_action_id
        public static func noConfidenceActionNewWithActionId(gov_action_id_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceActionId>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_no_confidence_action_new_with_action_id(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_nonce_to_bytes
        public static func nonceToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Nonce>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_nonce_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_nonce_from_bytes
        public static func nonceFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Nonce> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_nonce_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_nonce_to_hex
        public static func nonceToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Nonce>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_nonce_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_nonce_from_hex
        public static func nonceFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Nonce> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_nonce_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_nonce_to_json
        public static func nonceToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Nonce>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_nonce_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_nonce_from_json
        public static func nonceFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Nonce> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_nonce_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_nonce_new_identity
        public static func nonceNewIdentity() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_nonce_new_identity(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_nonce_new_from_hash
        public static func nonceNewFromHash(hash_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Nonce> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_nonce_new_from_hash(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_nonce_get_hash
        public static func nonceGetHash(self_rptr p1: OpaqueRustPointer<Types.CSL_Nonce>) throws -> Data? {
            let c_p1 = p1.cPointer
            var result = try DataPtr(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_nonce_get_hash(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_operational_cert_to_bytes
        public static func operationalCertToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_OperationalCert>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_operational_cert_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_operational_cert_from_bytes
        public static func operationalCertFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_OperationalCert> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_operational_cert_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_operational_cert_to_hex
        public static func operationalCertToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_OperationalCert>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_operational_cert_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_operational_cert_from_hex
        public static func operationalCertFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_OperationalCert> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_operational_cert_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_operational_cert_to_json
        public static func operationalCertToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_OperationalCert>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_operational_cert_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_operational_cert_from_json
        public static func operationalCertFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_OperationalCert> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_operational_cert_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_operational_cert_sequence_number
        public static func operationalCertSequenceNumber(self_rptr p1: OpaqueRustPointer<Types.CSL_OperationalCert>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_operational_cert_sequence_number(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_operational_cert_kes_period
        public static func operationalCertKesPeriod(self_rptr p1: OpaqueRustPointer<Types.CSL_OperationalCert>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_operational_cert_kes_period(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_operational_cert_new
        public static func operationalCertNew(hot_vkey_rptr p1: OpaqueRustPointer<Types.CSL_KESVKey>, sequence_number_long p2: Int64, kes_period_long p3: Int64, sigma_rptr p4: OpaqueRustPointer<Types.CSL_Ed25519Signature>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p4 = p4.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_operational_cert_new(c_p1, p2, p3, c_p4, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_output_datum_new_data_hash
        public static func outputDatumNewDataHash(data_hash_rptr p1: OpaqueRustPointer<Types.CSL_DataHash>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_output_datum_new_data_hash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_output_datum_new_data
        public static func outputDatumNewData(data_rptr p1: OpaqueRustPointer<Types.CSL_PlutusData>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_output_datum_new_data(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_parameter_change_action_to_bytes
        public static func parameterChangeActionToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_ParameterChangeAction>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_parameter_change_action_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_parameter_change_action_from_bytes
        public static func parameterChangeActionFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_ParameterChangeAction> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_parameter_change_action_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_parameter_change_action_to_hex
        public static func parameterChangeActionToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_ParameterChangeAction>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_parameter_change_action_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_parameter_change_action_from_hex
        public static func parameterChangeActionFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ParameterChangeAction> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_parameter_change_action_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_parameter_change_action_to_json
        public static func parameterChangeActionToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_ParameterChangeAction>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_parameter_change_action_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_parameter_change_action_from_json
        public static func parameterChangeActionFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ParameterChangeAction> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_parameter_change_action_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_parameter_change_action_new
        public static func parameterChangeActionNew(protocol_param_updates_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_parameter_change_action_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_parameter_change_action_new_with_action_id
        public static func parameterChangeActionNewWithActionId(gov_action_id_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceActionId>, protocol_param_updates_rptr p2: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_parameter_change_action_new_with_action_id(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_parameter_change_action_new_with_policy_hash
        public static func parameterChangeActionNewWithPolicyHash(protocol_param_updates_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>, policy_hash_rptr p2: OpaqueRustPointer<Types.CSL_ScriptHash>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_parameter_change_action_new_with_policy_hash(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_parameter_change_action_new_with_policy_hash_and_action_id
        public static func parameterChangeActionNewWithPolicyHashAndActionId(gov_action_id_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceActionId>, protocol_param_updates_rptr p2: OpaqueRustPointer<Types.CSL_ProtocolParamUpdate>, policy_hash_rptr p3: OpaqueRustPointer<Types.CSL_ScriptHash>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_parameter_change_action_new_with_policy_hash_and_action_id(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_to_bytes
        public static func plutusDataToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusData>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_from_bytes
        public static func plutusDataFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_PlutusData> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_to_hex
        public static func plutusDataToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusData>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_from_hex
        public static func plutusDataFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PlutusData> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_new_constr_plutus_data
        public static func plutusDataNewConstrPlutusData(constr_plutus_data_rptr p1: OpaqueRustPointer<Types.CSL_ConstrPlutusData>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_new_constr_plutus_data(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_new_empty_constr_plutus_data
        public static func plutusDataNewEmptyConstrPlutusData(alternative_rptr p1: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_new_empty_constr_plutus_data(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_new_single_value_constr_plutus_data
        public static func plutusDataNewSingleValueConstrPlutusData(alternative_rptr p1: OpaqueRustPointer<Types.CSL_BigNum>, plutus_data_rptr p2: OpaqueRustPointer<Types.CSL_PlutusData>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_new_single_value_constr_plutus_data(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_new_map
        public static func plutusDataNewMap(map_rptr p1: OpaqueRustPointer<Types.CSL_PlutusMap>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_new_map(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_new_list
        public static func plutusDataNewList(list_rptr p1: OpaqueRustPointer<Types.CSL_PlutusList>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_new_list(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_new_integer
        public static func plutusDataNewInteger(integer_rptr p1: OpaqueRustPointer<Types.CSL_BigInt>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_new_integer(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_new_bytes
        public static func plutusDataNewBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_None> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_new_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_kind
        public static func plutusDataKind(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusData>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_kind(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_as_constr_plutus_data
        public static func plutusDataAsConstrPlutusData(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusData>) throws -> OpaqueRustPointer<Types.CSL_ConstrPlutusData> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_as_constr_plutus_data(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_as_bytes
        public static func plutusDataAsBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusData>) throws -> Data? {
            let c_p1 = p1.cPointer
            var result = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_as_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_to_json
        public static func plutusDataToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusData>, schema_int p2: Int32) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_to_json(c_p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_from_json
        public static func plutusDataFromJson(json_str p1: String, schema_int p2: Int32) throws -> OpaqueRustPointer<Types.CSL_PlutusData> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_from_json(p1, p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_from_address
        public static func plutusDataFromAddress(address_rptr p1: OpaqueRustPointer<Types.CSL_Address>) throws -> OpaqueRustPointer<Types.CSL_PlutusData> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_from_address(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_data_as_address
        public static func plutusDataAsAddress(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusData>, network_rptr p2: OpaqueRustPointer<Types.CSL_NetworkInfo>) throws -> OpaqueRustPointer<Types.CSL_Address> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_data_as_address(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_list_to_bytes
        public static func plutusListToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusList>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_list_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_list_from_bytes
        public static func plutusListFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_PlutusList> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_list_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_list_to_hex
        public static func plutusListToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusList>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_list_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_list_from_hex
        public static func plutusListFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PlutusList> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_list_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_list_new
        public static func plutusListNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_list_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_list_len
        public static func plutusListLen(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusList>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_list_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_map_to_bytes
        public static func plutusMapToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusMap>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_map_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_map_from_bytes
        public static func plutusMapFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_PlutusMap> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_map_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_map_to_hex
        public static func plutusMapToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusMap>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_map_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_map_from_hex
        public static func plutusMapFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_PlutusMap> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_map_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_map_new
        public static func plutusMapNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_map_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_map_len
        public static func plutusMapLen(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusMap>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_map_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_map_values_new
        public static func plutusMapValuesNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_map_values_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_map_values_len
        public static func plutusMapValuesLen(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusMapValues>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_map_values_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_plutus_script_to_bytes
        public static func plutusScriptToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_PlutusScript>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_plutus_script_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
}
