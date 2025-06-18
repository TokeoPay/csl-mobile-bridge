import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension CSLKit {
// Swift Wrapper call to csl_bridge_governance_action_as_hard_fork_initiation_action
        public static func governanceActionAsHardForkInitiationAction(self_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceAction>) throws -> OpaqueRustPointer<Types.CSL_HardForkInitiationAction> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_as_hard_fork_initiation_action(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_id_to_bytes
        public static func governanceActionIdToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceActionId>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_id_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_id_from_bytes
        public static func governanceActionIdFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_GovernanceActionId> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_id_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_id_to_hex
        public static func governanceActionIdToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceActionId>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_id_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_id_from_hex
        public static func governanceActionIdFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_GovernanceActionId> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_id_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_id_to_json
        public static func governanceActionIdToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceActionId>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_id_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_id_from_json
        public static func governanceActionIdFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_GovernanceActionId> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_id_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_id_transaction_id
        public static func governanceActionIdTransactionId(self_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceActionId>) throws -> OpaqueRustPointer<Types.CSL_TransactionHash> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_id_transaction_id(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_id_index
        public static func governanceActionIdIndex(self_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceActionId>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_id_index(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_id_new
        public static func governanceActionIdNew(transaction_id_rptr p1: OpaqueRustPointer<Types.CSL_TransactionHash>, index_long p2: Int64) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_id_new(c_p1, p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_ids_to_json
        public static func governanceActionIdsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceActionIds>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_ids_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_ids_from_json
        public static func governanceActionIdsFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_GovernanceActionIds> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_ids_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_ids_new
        public static func governanceActionIdsNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_ids_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_ids_len
        public static func governanceActionIdsLen(self_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceActionIds>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_ids_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_hard_fork_initiation_action_to_bytes
        public static func hardForkInitiationActionToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_HardForkInitiationAction>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_hard_fork_initiation_action_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_hard_fork_initiation_action_from_bytes
        public static func hardForkInitiationActionFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_HardForkInitiationAction> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_hard_fork_initiation_action_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_hard_fork_initiation_action_to_hex
        public static func hardForkInitiationActionToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_HardForkInitiationAction>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_hard_fork_initiation_action_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_hard_fork_initiation_action_from_hex
        public static func hardForkInitiationActionFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_HardForkInitiationAction> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_hard_fork_initiation_action_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_hard_fork_initiation_action_to_json
        public static func hardForkInitiationActionToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_HardForkInitiationAction>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_hard_fork_initiation_action_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_hard_fork_initiation_action_from_json
        public static func hardForkInitiationActionFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_HardForkInitiationAction> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_hard_fork_initiation_action_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_hard_fork_initiation_action_new
        public static func hardForkInitiationActionNew(protocol_version_rptr p1: OpaqueRustPointer<Types.CSL_ProtocolVersion>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_hard_fork_initiation_action_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_hard_fork_initiation_action_new_with_action_id
        public static func hardForkInitiationActionNewWithActionId(gov_action_id_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceActionId>, protocol_version_rptr p2: OpaqueRustPointer<Types.CSL_ProtocolVersion>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_hard_fork_initiation_action_new_with_action_id(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_to_bytes
        public static func headerToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Header>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_header_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_from_bytes
        public static func headerFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Header> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_header_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_to_hex
        public static func headerToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Header>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_header_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_from_hex
        public static func headerFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Header> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_header_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_to_json
        public static func headerToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Header>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_header_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_from_json
        public static func headerFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Header> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_header_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_new
        public static func headerNew(header_body_rptr p1: OpaqueRustPointer<Types.CSL_HeaderBody>, body_signature_rptr p2: OpaqueRustPointer<Types.CSL_KESSignature>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_header_new(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_body_to_bytes
        public static func headerBodyToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_HeaderBody>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_header_body_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_body_from_bytes
        public static func headerBodyFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_HeaderBody> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_header_body_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_body_to_hex
        public static func headerBodyToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_HeaderBody>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_header_body_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_body_from_hex
        public static func headerBodyFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_HeaderBody> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_header_body_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_body_to_json
        public static func headerBodyToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_HeaderBody>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_header_body_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_body_from_json
        public static func headerBodyFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_HeaderBody> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_header_body_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_body_block_number
        public static func headerBodyBlockNumber(self_rptr p1: OpaqueRustPointer<Types.CSL_HeaderBody>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_header_body_block_number(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_body_slot
        public static func headerBodySlot(self_rptr p1: OpaqueRustPointer<Types.CSL_HeaderBody>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_header_body_slot(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_body_vrf_vkey
        public static func headerBodyVrfVkey(self_rptr p1: OpaqueRustPointer<Types.CSL_HeaderBody>) throws -> OpaqueRustPointer<Types.CSL_VRFVKey> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_header_body_vrf_vkey(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_body_has_nonce_and_leader_vrf
        public static func headerBodyHasNonceAndLeaderVrf(self_rptr p1: OpaqueRustPointer<Types.CSL_HeaderBody>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_header_body_has_nonce_and_leader_vrf(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_body_has_vrf_result
        public static func headerBodyHasVrfResult(self_rptr p1: OpaqueRustPointer<Types.CSL_HeaderBody>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_header_body_has_vrf_result(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_body_vrf_result_or_nothing
        public static func headerBodyVrfResultOrNothing(self_rptr p1: OpaqueRustPointer<Types.CSL_HeaderBody>) throws -> OpaqueRustPointer<Types.CSL_VRFCert> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_header_body_vrf_result_or_nothing(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_body_block_body_size
        public static func headerBodyBlockBodySize(self_rptr p1: OpaqueRustPointer<Types.CSL_HeaderBody>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_header_body_block_body_size(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_body_new
        public static func headerBodyNew(block_number_long p1: Int64, slot_long p2: Int64, issuer_vkey_rptr p3: OpaqueRustPointer<Types.CSL_Vkey>, vrf_vkey_rptr p4: OpaqueRustPointer<Types.CSL_VRFVKey>, vrf_result_rptr p5: OpaqueRustPointer<Types.CSL_VRFCert>, block_body_size_long p6: Int64, block_body_hash_rptr p7: OpaqueRustPointer<Types.CSL_BlockHash>, operational_cert_rptr p8: OpaqueRustPointer<Types.CSL_OperationalCert>, protocol_version_rptr p9: OpaqueRustPointer<Types.CSL_ProtocolVersion>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p3 = p3.cPointer
            let c_p4 = p4.cPointer
            let c_p5 = p5.cPointer
            let c_p7 = p7.cPointer
            let c_p8 = p8.cPointer
            let c_p9 = p9.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_header_body_new(p1, p2, c_p3, c_p4, c_p5, p6, c_p7, c_p8, c_p9, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_body_new_with_prev_hash
        public static func headerBodyNewWithPrevHash(block_number_long p1: Int64, slot_long p2: Int64, prev_hash_rptr p3: OpaqueRustPointer<Types.CSL_BlockHash>, issuer_vkey_rptr p4: OpaqueRustPointer<Types.CSL_Vkey>, vrf_vkey_rptr p5: OpaqueRustPointer<Types.CSL_VRFVKey>, vrf_result_rptr p6: OpaqueRustPointer<Types.CSL_VRFCert>, block_body_size_long p7: Int64, block_body_hash_rptr p8: OpaqueRustPointer<Types.CSL_BlockHash>, operational_cert_rptr p9: OpaqueRustPointer<Types.CSL_OperationalCert>, protocol_version_rptr p10: OpaqueRustPointer<Types.CSL_ProtocolVersion>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p3 = p3.cPointer
            let c_p4 = p4.cPointer
            let c_p5 = p5.cPointer
            let c_p6 = p6.cPointer
            let c_p8 = p8.cPointer
            let c_p9 = p9.cPointer
            let c_p10 = p10.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_header_body_new_with_prev_hash(p1, p2, c_p3, c_p4, c_p5, c_p6, p7, c_p8, c_p9, c_p10, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_body_new_headerbody
        public static func headerBodyNewHeaderbody(block_number_long p1: Int64, slot_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>, issuer_vkey_rptr p3: OpaqueRustPointer<Types.CSL_Vkey>, vrf_vkey_rptr p4: OpaqueRustPointer<Types.CSL_VRFVKey>, vrf_result_rptr p5: OpaqueRustPointer<Types.CSL_VRFCert>, block_body_size_long p6: Int64, block_body_hash_rptr p7: OpaqueRustPointer<Types.CSL_BlockHash>, operational_cert_rptr p8: OpaqueRustPointer<Types.CSL_OperationalCert>, protocol_version_rptr p9: OpaqueRustPointer<Types.CSL_ProtocolVersion>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            let c_p4 = p4.cPointer
            let c_p5 = p5.cPointer
            let c_p7 = p7.cPointer
            let c_p8 = p8.cPointer
            let c_p9 = p9.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_header_body_new_headerbody(p1, c_p2, c_p3, c_p4, c_p5, p6, c_p7, c_p8, c_p9, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_header_body_new_headerbody_with_prev_hash
        public static func headerBodyNewHeaderbodyWithPrevHash(block_number_long p1: Int64, slot_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>, prev_hash_rptr p3: OpaqueRustPointer<Types.CSL_BlockHash>, issuer_vkey_rptr p4: OpaqueRustPointer<Types.CSL_Vkey>, vrf_vkey_rptr p5: OpaqueRustPointer<Types.CSL_VRFVKey>, vrf_result_rptr p6: OpaqueRustPointer<Types.CSL_VRFCert>, block_body_size_long p7: Int64, block_body_hash_rptr p8: OpaqueRustPointer<Types.CSL_BlockHash>, operational_cert_rptr p9: OpaqueRustPointer<Types.CSL_OperationalCert>, protocol_version_rptr p10: OpaqueRustPointer<Types.CSL_ProtocolVersion>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            let c_p4 = p4.cPointer
            let c_p5 = p5.cPointer
            let c_p6 = p6.cPointer
            let c_p8 = p8.cPointer
            let c_p9 = p9.cPointer
            let c_p10 = p10.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_header_body_new_headerbody_with_prev_hash(p1, c_p2, c_p3, c_p4, c_p5, c_p6, p7, c_p8, c_p9, c_p10, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_info_action_new
        public static func infoActionNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_info_action_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_int_to_bytes
        public static func intToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Int>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_int_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_int_from_bytes
        public static func intFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Int> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_int_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_int_to_hex
        public static func intToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Int>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_int_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_int_from_hex
        public static func intFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Int> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_int_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_int_to_json
        public static func intToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Int>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_int_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_int_from_json
        public static func intFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Int> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_int_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_int_new
        public static func intNew(x_rptr p1: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_int_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_int_new_negative
        public static func intNewNegative(x_rptr p1: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_int_new_negative(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_int_new_i32
        public static func intNewI32(x_long p1: Int64) throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_int_new_i32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_int_is_positive
        public static func intIsPositive(self_rptr p1: OpaqueRustPointer<Types.CSL_Int>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_int_is_positive(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_int_as_i32
        public static func intAsI32(self_rptr p1: OpaqueRustPointer<Types.CSL_Int>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64  = 0
            var error: CharPtr? = nil
            let success = csl_bridge_int_as_i32(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_int_as_i32_or_nothing
        public static func intAsI32OrNothing(self_rptr p1: OpaqueRustPointer<Types.CSL_Int>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64  = 0
            var error: CharPtr? = nil
            let success = csl_bridge_int_as_i32_or_nothing(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_int_as_i32_or_fail
        public static func intAsI32OrFail(self_rptr p1: OpaqueRustPointer<Types.CSL_Int>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result: Int64  = 0
            var error: CharPtr? = nil
            let success = csl_bridge_int_as_i32_or_fail(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_int_to_str
        public static func intToStr(self_rptr p1: OpaqueRustPointer<Types.CSL_Int>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_int_to_str(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_int_from_str
        public static func intFromStr(string_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Int> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_int_from_str(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ipv4_to_bytes
        public static func ipv4ToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Ipv4>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_ipv4_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ipv4_from_bytes
        public static func ipv4FromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Ipv4> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ipv4_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ipv4_to_hex
        public static func ipv4ToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Ipv4>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_ipv4_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ipv4_from_hex
        public static func ipv4FromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Ipv4> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ipv4_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ipv4_to_json
        public static func ipv4ToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Ipv4>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_ipv4_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ipv4_from_json
        public static func ipv4FromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Ipv4> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ipv4_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ipv4_new
        public static func ipv4New(data_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Ipv4> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ipv4_new(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ipv4_ip
        public static func ipv4Ip(self_rptr p1: OpaqueRustPointer<Types.CSL_Ipv4>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_ipv4_ip(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ipv6_to_bytes
        public static func ipv6ToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Ipv6>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_ipv6_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ipv6_from_bytes
        public static func ipv6FromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Ipv6> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ipv6_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ipv6_to_hex
        public static func ipv6ToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Ipv6>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_ipv6_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ipv6_from_hex
        public static func ipv6FromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Ipv6> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ipv6_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ipv6_to_json
        public static func ipv6ToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Ipv6>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_ipv6_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ipv6_from_json
        public static func ipv6FromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Ipv6> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ipv6_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ipv6_new
        public static func ipv6New(data_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Ipv6> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ipv6_new(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ipv6_ip
        public static func ipv6Ip(self_rptr p1: OpaqueRustPointer<Types.CSL_Ipv6>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_ipv6_ip(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_k_e_s_signature_to_bytes
        public static func kESSignatureToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_KESSignature>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_k_e_s_signature_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_k_e_s_signature_from_bytes
        public static func kESSignatureFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_KESSignature> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_k_e_s_signature_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_k_e_s_v_key_from_bytes
        public static func kESVKeyFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_KESVKey> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_k_e_s_v_key_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_k_e_s_v_key_to_bytes
        public static func kESVKeyToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_KESVKey>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_k_e_s_v_key_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_k_e_s_v_key_to_bech32
        public static func kESVKeyToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_KESVKey>, prefix_str p2: String) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_k_e_s_v_key_to_bech32(c_p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_k_e_s_v_key_from_bech32
        public static func kESVKeyFromBech32(bech_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_KESVKey> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_k_e_s_v_key_from_bech32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_k_e_s_v_key_to_hex
        public static func kESVKeyToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_KESVKey>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_k_e_s_v_key_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_k_e_s_v_key_from_hex
        public static func kESVKeyFromHex(hex_str p1: String) throws -> OpaqueRustPointer<Types.CSL_KESVKey> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_k_e_s_v_key_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_language_to_bytes
        public static func languageToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Language>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_language_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_language_from_bytes
        public static func languageFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Language> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_language_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_language_to_hex
        public static func languageToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Language>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_language_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_language_from_hex
        public static func languageFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Language> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_language_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_language_to_json
        public static func languageToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Language>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_language_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_language_from_json
        public static func languageFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Language> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_language_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_language_new_plutus_v1
        public static func languageNewPlutusV1() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_language_new_plutus_v1(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_language_new_plutus_v2
        public static func languageNewPlutusV2() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_language_new_plutus_v2(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_language_new_plutus_v3
        public static func languageNewPlutusV3() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_language_new_plutus_v3(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_language_kind
        public static func languageKind(self_rptr p1: OpaqueRustPointer<Types.CSL_Language>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_language_kind(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_languages_new
        public static func languagesNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_languages_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_languages_len
        public static func languagesLen(self_rptr p1: OpaqueRustPointer<Types.CSL_Languages>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_languages_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_languages_list
        public static func languagesList() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_languages_list(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_legacy_daedalus_private_key_from_bytes
        public static func legacyDaedalusPrivateKeyFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_LegacyDaedalusPrivateKey> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_legacy_daedalus_private_key_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
}
