import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension CSLKit {
// Swift Wrapper call to csl_bridge_transaction_witness_sets_to_json
        public static func transactionWitnessSetsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionWitnessSets>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_witness_sets_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_witness_sets_from_json
        public static func transactionWitnessSetsFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionWitnessSets> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_witness_sets_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_witness_sets_new
        public static func transactionWitnessSetsNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_witness_sets_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_witness_sets_len
        public static func transactionWitnessSetsLen(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionWitnessSets>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_witness_sets_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_treasury_withdrawals_to_json
        public static func treasuryWithdrawalsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_TreasuryWithdrawals>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_treasury_withdrawals_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_treasury_withdrawals_from_json
        public static func treasuryWithdrawalsFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TreasuryWithdrawals> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_treasury_withdrawals_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_treasury_withdrawals_new
        public static func treasuryWithdrawalsNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_treasury_withdrawals_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_treasury_withdrawals_len
        public static func treasuryWithdrawalsLen(self_rptr p1: OpaqueRustPointer<Types.CSL_TreasuryWithdrawals>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_treasury_withdrawals_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_treasury_withdrawals_action_to_bytes
        public static func treasuryWithdrawalsActionToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_TreasuryWithdrawalsAction>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_treasury_withdrawals_action_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_treasury_withdrawals_action_from_bytes
        public static func treasuryWithdrawalsActionFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_TreasuryWithdrawalsAction> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_treasury_withdrawals_action_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_treasury_withdrawals_action_to_hex
        public static func treasuryWithdrawalsActionToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_TreasuryWithdrawalsAction>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_treasury_withdrawals_action_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_treasury_withdrawals_action_from_hex
        public static func treasuryWithdrawalsActionFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TreasuryWithdrawalsAction> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_treasury_withdrawals_action_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_treasury_withdrawals_action_to_json
        public static func treasuryWithdrawalsActionToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_TreasuryWithdrawalsAction>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_treasury_withdrawals_action_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_treasury_withdrawals_action_from_json
        public static func treasuryWithdrawalsActionFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TreasuryWithdrawalsAction> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_treasury_withdrawals_action_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_treasury_withdrawals_action_withdrawals
        public static func treasuryWithdrawalsActionWithdrawals(self_rptr p1: OpaqueRustPointer<Types.CSL_TreasuryWithdrawalsAction>) throws -> OpaqueRustPointer<Types.CSL_TreasuryWithdrawals> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_treasury_withdrawals_action_withdrawals(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_treasury_withdrawals_action_new
        public static func treasuryWithdrawalsActionNew(withdrawals_rptr p1: OpaqueRustPointer<Types.CSL_TreasuryWithdrawals>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_treasury_withdrawals_action_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_treasury_withdrawals_action_new_with_policy_hash
        public static func treasuryWithdrawalsActionNewWithPolicyHash(withdrawals_rptr p1: OpaqueRustPointer<Types.CSL_TreasuryWithdrawals>, policy_hash_rptr p2: OpaqueRustPointer<Types.CSL_ScriptHash>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_treasury_withdrawals_action_new_with_policy_hash(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_tx_inputs_builder_new
        public static func txInputsBuilderNew() throws -> OpaqueRustPointer<Types.CSL_TxInputsBuilder> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_tx_inputs_builder_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_tx_inputs_builder_len
        public static func txInputsBuilderLen(self_rptr p1: OpaqueRustPointer<Types.CSL_TxInputsBuilder>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_tx_inputs_builder_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_tx_inputs_builder_total_value
        public static func txInputsBuilderTotalValue(self_rptr p1: OpaqueRustPointer<Types.CSL_TxInputsBuilder>) throws -> OpaqueRustPointer<Types.CSL_Value> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_tx_inputs_builder_total_value(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_u_r_l_to_bytes
        public static func uRLToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_URL>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_u_r_l_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_u_r_l_from_bytes
        public static func uRLFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_URL> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_u_r_l_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_u_r_l_to_hex
        public static func uRLToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_URL>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_u_r_l_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_u_r_l_from_hex
        public static func uRLFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_URL> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_u_r_l_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_u_r_l_to_json
        public static func uRLToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_URL>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_u_r_l_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_u_r_l_from_json
        public static func uRLFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_URL> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_u_r_l_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_u_r_l_new
        public static func uRLNew(url_str p1: String) throws -> OpaqueRustPointer<Types.CSL_URL> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_u_r_l_new(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_u_r_l_url
        public static func uRLUrl(self_rptr p1: OpaqueRustPointer<Types.CSL_URL>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_u_r_l_url(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_unit_interval_to_bytes
        public static func unitIntervalToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_UnitInterval>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_unit_interval_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_unit_interval_from_bytes
        public static func unitIntervalFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_UnitInterval> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_unit_interval_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_unit_interval_to_hex
        public static func unitIntervalToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_UnitInterval>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_unit_interval_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_unit_interval_from_hex
        public static func unitIntervalFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_UnitInterval> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_unit_interval_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_unit_interval_to_json
        public static func unitIntervalToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_UnitInterval>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_unit_interval_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_unit_interval_from_json
        public static func unitIntervalFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_UnitInterval> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_unit_interval_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_unit_interval_new
        public static func unitIntervalNew(numerator_rptr p1: OpaqueRustPointer<Types.CSL_BigNum>, denominator_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_UnitInterval> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_unit_interval_new(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_update_to_bytes
        public static func updateToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Update>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_update_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_update_from_bytes
        public static func updateFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Update> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_update_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_update_to_hex
        public static func updateToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Update>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_update_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_update_from_hex
        public static func updateFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Update> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_update_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_update_to_json
        public static func updateToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Update>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_update_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_update_from_json
        public static func updateFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Update> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_update_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_update_epoch
        public static func updateEpoch(self_rptr p1: OpaqueRustPointer<Types.CSL_Update>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_update_epoch(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_update_new
        public static func updateNew(proposed_protocol_parameter_updates_rptr p1: OpaqueRustPointer<Types.CSL_ProposedProtocolParameterUpdates>, epoch_long p2: Int64) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_update_new(c_p1, p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_update_committee_action_to_bytes
        public static func updateCommitteeActionToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_UpdateCommitteeAction>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_update_committee_action_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_update_committee_action_from_bytes
        public static func updateCommitteeActionFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_UpdateCommitteeAction> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_update_committee_action_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_update_committee_action_to_hex
        public static func updateCommitteeActionToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_UpdateCommitteeAction>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_update_committee_action_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_update_committee_action_from_hex
        public static func updateCommitteeActionFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_UpdateCommitteeAction> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_update_committee_action_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_update_committee_action_to_json
        public static func updateCommitteeActionToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_UpdateCommitteeAction>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_update_committee_action_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_update_committee_action_from_json
        public static func updateCommitteeActionFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_UpdateCommitteeAction> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_update_committee_action_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_update_committee_action_new
        public static func updateCommitteeActionNew(committee_rptr p1: OpaqueRustPointer<Types.CSL_Committee>, members_to_remove_rptr p2: OpaqueRustPointer<Types.CSL_Credentials>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_update_committee_action_new(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_update_committee_action_new_with_action_id
        public static func updateCommitteeActionNewWithActionId(gov_action_id_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceActionId>, committee_rptr p2: OpaqueRustPointer<Types.CSL_Committee>, members_to_remove_rptr p3: OpaqueRustPointer<Types.CSL_Credentials>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_update_committee_action_new_with_action_id(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_cert_to_bytes
        public static func vRFCertToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_VRFCert>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_cert_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_cert_from_bytes
        public static func vRFCertFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_VRFCert> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_cert_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_cert_to_hex
        public static func vRFCertToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_VRFCert>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_cert_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_cert_from_hex
        public static func vRFCertFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VRFCert> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_cert_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_cert_to_json
        public static func vRFCertToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_VRFCert>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_cert_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_cert_from_json
        public static func vRFCertFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VRFCert> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_cert_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_cert_output
        public static func vRFCertOutput(self_rptr p1: OpaqueRustPointer<Types.CSL_VRFCert>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_cert_output(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_cert_proof
        public static func vRFCertProof(self_rptr p1: OpaqueRustPointer<Types.CSL_VRFCert>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_cert_proof(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_cert_new
        public static func vRFCertNew(output_data p1: Data, proof_data p3: Data) throws -> OpaqueRustPointer<Types.CSL_VRFCert> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var c_p3_ptr = p3.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p3_len = UInt(p3.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_cert_new(&c_p1_ptr, c_p1_len, &c_p3_ptr, c_p3_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_key_hash_from_bytes
        public static func vRFKeyHashFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_VRFKeyHash> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_key_hash_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_key_hash_to_bytes
        public static func vRFKeyHashToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_VRFKeyHash>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_key_hash_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_key_hash_to_bech32
        public static func vRFKeyHashToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_VRFKeyHash>, prefix_str p2: String) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_key_hash_to_bech32(c_p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_key_hash_from_bech32
        public static func vRFKeyHashFromBech32(bech_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VRFKeyHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_key_hash_from_bech32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_key_hash_to_hex
        public static func vRFKeyHashToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_VRFKeyHash>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_key_hash_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_key_hash_from_hex
        public static func vRFKeyHashFromHex(hex_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VRFKeyHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_key_hash_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_v_key_from_bytes
        public static func vRFVKeyFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_VRFVKey> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_v_key_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_v_key_to_bytes
        public static func vRFVKeyToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_VRFVKey>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_v_key_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_v_key_to_bech32
        public static func vRFVKeyToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_VRFVKey>, prefix_str p2: String) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_v_key_to_bech32(c_p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_v_key_from_bech32
        public static func vRFVKeyFromBech32(bech_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VRFVKey> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_v_key_from_bech32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_v_key_to_hex
        public static func vRFVKeyToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_VRFVKey>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_v_key_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_v_r_f_v_key_from_hex
        public static func vRFVKeyFromHex(hex_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VRFVKey> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_v_r_f_v_key_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_value_to_bytes
        public static func valueToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Value>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_value_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_value_from_bytes
        public static func valueFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Value> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_value_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_value_to_hex
        public static func valueToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Value>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_value_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_value_from_hex
        public static func valueFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Value> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_value_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_value_to_json
        public static func valueToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Value>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_value_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_value_from_json
        public static func valueFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Value> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_value_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_value_new
        public static func valueNew(coin_rptr p1: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_Value> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_value_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_value_new_from_assets
        public static func valueNewFromAssets(multiasset_rptr p1: OpaqueRustPointer<Types.CSL_MultiAsset>) throws -> OpaqueRustPointer<Types.CSL_Value> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_value_new_from_assets(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_value_new_with_assets
        public static func valueNewWithAssets(coin_rptr p1: OpaqueRustPointer<Types.CSL_BigNum>, multiasset_rptr p2: OpaqueRustPointer<Types.CSL_MultiAsset>) throws -> OpaqueRustPointer<Types.CSL_Value> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_value_new_with_assets(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_value_zero
        public static func valueZero() throws -> OpaqueRustPointer<Types.CSL_Value> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_value_zero(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_value_is_zero
        public static func valueIsZero(self_rptr p1: OpaqueRustPointer<Types.CSL_Value>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_value_is_zero(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_value_compare
        public static func valueCompare(self_rptr p1: OpaqueRustPointer<Types.CSL_Value>, rhs_value_rptr p2: OpaqueRustPointer<Types.CSL_Value>) throws -> Int64? {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result: Int64 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_value_compare(c_p1, c_p2, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        
        // Swift Wrapper call to csl_bridge_value_checked_add
        public static func valueCheckedAdd(self_rptr p1: OpaqueRustPointer<Types.CSL_Value>, rhs_value_rptr p2: OpaqueRustPointer<Types.CSL_Value>) throws -> OpaqueRustPointer<Types.CSL_Value> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_value_checked_add(c_p1, c_p2, &result, &error)
            if success { 
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }


        // Swift Wrapper call to csl_bridge_value_checked_sub
        public static func valueCheckedSub(self_rptr p1: OpaqueRustPointer<Types.CSL_Value>, rhs_value_rptr p2: OpaqueRustPointer<Types.CSL_Value>) throws -> OpaqueRustPointer<Types.CSL_Value> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_value_checked_sub(c_p1, c_p2, &result, &error)
            if success { 
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }


        // Swift Wrapper call to csl_bridge_value_clamped_sub
        public static func valueClampedSub(self_rptr p1: OpaqueRustPointer<Types.CSL_Value>, rhs_value_rptr p2: OpaqueRustPointer<Types.CSL_Value>) throws -> OpaqueRustPointer<Types.CSL_Value> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_value_clamped_sub(c_p1, c_p2, &result, &error) 
            if success { 
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        
        // Swift Wrapper call to csl_bridge_value_coin
        public static func valueCoin(self_rptr p1: OpaqueRustPointer<Types.CSL_Value>) throws -> OpaqueRustPointer<Types.CSL_BigNum> {
            let c_p1 = p1.cPointer
            var result = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_value_coin(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }

        // Swift Wrapper call to csl_bridge_value_multiasset
        public static func valueMultiasset(self_rptr p1: OpaqueRustPointer<Types.CSL_Value>) throws -> OpaqueRustPointer<Types.CSL_MultiAsset> {
            let c_p1 = p1.cPointer
            var result = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_value_multiasset(c_p1, &result, &error)    
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }

        // Swift Wrapper call to csl_bridge_value_set_coin
        public static func valueSetCoin(self_rptr p1: OpaqueRustPointer<Types.CSL_Value>, coin_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> Bool {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result = RPtr(_0: nil)
            var error: CharPtr? = nil
            return csl_bridge_value_set_coin(c_p1, c_p2, &error)
        }

        // Swift Wrapper call to csl_bridge_value_set_multiasset
        public static func valueSetMultiasset(self_rptr p1: OpaqueRustPointer<Types.CSL_Value>, multiasset_rptr p2: OpaqueRustPointer<Types.CSL_MultiAsset>) throws -> Bool {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var error: CharPtr? = nil
            return csl_bridge_value_set_multiasset(c_p1, c_p2, &error)
        }

        // Swift Wrapper call to csl_bridge_value_to_bytes
//        public static func valueToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Value>) throws -> Data {
//            let c_p1 = p1.cPointer
//            var result  = try DataPtr.init(fromData: Data())
//            var error: CharPtr? = nil
//            let success = csl_bridge_value_to_bytes(c_p1, &result, &error)
//            if success {
//                return Data(dataPtr: result)
//            } else {
//                throw createError(from: error)
//            }
//        }
        
        // Swift Wrapper call to csl_bridge_value_from_bytes
//        public static func valueFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Value> {
//            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
//            let c_p1_len = UInt(p1.count)
//            var result  = RPtr(_0: nil)
//            var error: CharPtr? = nil
//            let success = csl_bridge_value_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
//            if success {
//                return OpaqueRustPointer(cPointer: result)
//            } else {
//                throw createError(from: error)
//            }
//        }
        
        // Swift Wrapper call to csl_bridge_value_to_hex
//        public static func valueToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Value>) throws -> String {
//            let c_p1 = p1.cPointer
//            var result : CharPtr? = nil
//            var error: CharPtr? = nil
//            let success = csl_bridge_value_to_hex(c_p1, &result, &error)
//            if success {
//                return String(cString: result!)
//            } else {
//                throw createError(from: error)
//            }
//        }

        // Swift Wrapper call to csl_bridge_value_from_hex
//        public static func valueFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Value> {
//            
//            var result  = RPtr(_0: nil)
//            var error: CharPtr? = nil
//            let success = csl_bridge_value_from_hex(p1, &result, &error)
//            if success {
//                return OpaqueRustPointer(cPointer: result)
//            } else {
//                throw createError(from: error)
//            }
//        }
        
        // Swift Wrapper call to csl_bridge_value_to_json
//        public static func valueToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Value>) throws -> String {
//            let c_p1 = p1.cPointer
//            var result : CharPtr? = nil
//            var error: CharPtr? = nil
//            let success = csl_bridge_versioned_block_to_bytes(c_p1, &result, &error)
//            if success {
//                return Data(dataPtr: result)
//            } else {
//                throw createError(from: error)
//            }
//        }
        

        // Swift Wrapper call to csl_bridge_versioned_block_from_bytes
        public static func versionedBlockFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_VersionedBlock> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_versioned_block_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_versioned_block_to_hex
        public static func versionedBlockToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_VersionedBlock>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_versioned_block_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_versioned_block_from_hex
        public static func versionedBlockFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VersionedBlock> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_versioned_block_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_versioned_block_to_json
        public static func versionedBlockToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_VersionedBlock>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_versioned_block_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_versioned_block_from_json
        public static func versionedBlockFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VersionedBlock> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_versioned_block_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_versioned_block_new
        public static func versionedBlockNew(block_rptr p1: OpaqueRustPointer<Types.CSL_Block>, era_code_long p2: Int64) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_versioned_block_new(c_p1, p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_versioned_block_era
        public static func versionedBlockEra(self_rptr p1: OpaqueRustPointer<Types.CSL_VersionedBlock>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_versioned_block_era(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkey_to_bytes
        public static func vkeyToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Vkey>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_vkey_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkey_from_bytes
        public static func vkeyFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Vkey> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vkey_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkey_to_hex
        public static func vkeyToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Vkey>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_vkey_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkey_from_hex
        public static func vkeyFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Vkey> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vkey_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkey_to_json
        public static func vkeyToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Vkey>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_vkey_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkey_from_json
        public static func vkeyFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Vkey> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vkey_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkey_new
        public static func vkeyNew(pk_rptr p1: OpaqueRustPointer<Types.CSL_PublicKey>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vkey_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeys_new
        public static func vkeysNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vkeys_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
}
