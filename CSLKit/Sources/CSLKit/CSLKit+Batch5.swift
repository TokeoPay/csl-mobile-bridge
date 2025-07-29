import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension CSLKit {
// Swift Wrapper call to csl_bridge_enterprise_address_from_address
        public static func enterpriseAddressFromAddress(addr_rptr p1: OpaqueRustPointer<Types.CSL_Address>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_enterprise_address_from_address(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_enterprise_address_network_id
        public static func enterpriseAddressNetworkId(self_rptr p1: OpaqueRustPointer<Types.CSL_EnterpriseAddress>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_enterprise_address_network_id(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ex_unit_prices_to_bytes
        public static func exUnitPricesToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_ExUnitPrices>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_ex_unit_prices_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ex_unit_prices_from_bytes
        public static func exUnitPricesFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_ExUnitPrices> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ex_unit_prices_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ex_unit_prices_to_hex
        public static func exUnitPricesToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_ExUnitPrices>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_ex_unit_prices_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ex_unit_prices_from_hex
        public static func exUnitPricesFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ExUnitPrices> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ex_unit_prices_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ex_unit_prices_to_json
        public static func exUnitPricesToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_ExUnitPrices>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_ex_unit_prices_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ex_unit_prices_from_json
        public static func exUnitPricesFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ExUnitPrices> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ex_unit_prices_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ex_unit_prices_new
        public static func exUnitPricesNew(mem_price_rptr p1: OpaqueRustPointer<Types.CSL_UnitInterval>, step_price_rptr p2: OpaqueRustPointer<Types.CSL_UnitInterval>) throws -> OpaqueRustPointer<Types.CSL_ExUnitPrices> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ex_unit_prices_new(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ex_units_to_bytes
        public static func exUnitsToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_ExUnits>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_ex_units_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ex_units_from_bytes
        public static func exUnitsFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_ExUnits> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ex_units_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ex_units_to_hex
        public static func exUnitsToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_ExUnits>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_ex_units_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ex_units_from_hex
        public static func exUnitsFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ExUnits> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ex_units_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ex_units_to_json
        public static func exUnitsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_ExUnits>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_ex_units_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ex_units_from_json
        public static func exUnitsFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_ExUnits> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ex_units_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ex_units_steps
        public static func exUnitsSteps(self_rptr p1: OpaqueRustPointer<Types.CSL_ExUnits>) throws -> OpaqueRustPointer<Types.CSL_BigNum> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ex_units_steps(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_ex_units_new
        public static func exUnitsNew(mem_rptr p1: OpaqueRustPointer<Types.CSL_BigNum>, steps_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_ExUnits> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_ex_units_new(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_block_from_bytes
        public static func fixedBlockFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_FixedBlock> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_block_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_block_from_hex
        public static func fixedBlockFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_FixedBlock> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_block_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_block_transaction_bodies
        public static func fixedBlockTransactionBodies(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedBlock>) throws -> OpaqueRustPointer<Types.CSL_TransactionBodies> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_block_transaction_bodies(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_block_transaction_witness_sets
        public static func fixedBlockTransactionWitnessSets(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedBlock>) throws -> OpaqueRustPointer<Types.CSL_TransactionWitnessSets> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_block_transaction_witness_sets(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_block_invalid_transactions
        public static func fixedBlockInvalidTransactions(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedBlock>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_block_invalid_transactions(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_to_bytes
        public static func fixedTransactionToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTransaction>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_from_bytes
        public static func fixedTransactionFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_FixedTransaction> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_to_hex
        public static func fixedTransactionToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTransaction>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_from_hex
        public static func fixedTransactionFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_FixedTransaction> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_new
        public static func fixedTransactionNew(raw_body_data p1: Data, raw_witness_set_data p3: Data, is_valid p5: Bool) throws -> OpaqueRustPointer<Types.CSL_FixedTransaction> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var c_p3_ptr = p3.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p3_len = UInt(p3.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_new(&c_p1_ptr, c_p1_len, &c_p3_ptr, c_p3_len, p5, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_new_with_auxiliary
        public static func fixedTransactionNewWithAuxiliary(raw_body_data p1: Data, raw_witness_set_data p3: Data, raw_auxiliary_data_data p5: Data, is_valid p7: Bool) throws -> OpaqueRustPointer<Types.CSL_FixedTransaction> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var c_p3_ptr = p3.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p3_len = UInt(p3.count)
            var c_p5_ptr = p5.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p5_len = UInt(p5.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_new_with_auxiliary(&c_p1_ptr, c_p1_len, &c_p3_ptr, c_p3_len, &c_p5_ptr, c_p5_len, p7, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_new_from_body_bytes
        public static func fixedTransactionNewFromBodyBytes(raw_body_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_FixedTransaction> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_new_from_body_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_raw_body
        public static func fixedTransactionRawBody(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTransaction>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_raw_body(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_witness_set
        public static func fixedTransactionWitnessSet(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTransaction>) throws -> OpaqueRustPointer<Types.CSL_TransactionWitnessSet> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_witness_set(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_raw_witness_set
        public static func fixedTransactionRawWitnessSet(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTransaction>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_raw_witness_set(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_is_valid
        public static func fixedTransactionIsValid(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTransaction>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_is_valid(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_raw_auxiliary_data
        public static func fixedTransactionRawAuxiliaryData(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTransaction>) throws -> Data? {
            let c_p1 = p1.cPointer
            var result: DataPtr = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_raw_auxiliary_data(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_transaction_hash
        public static func fixedTransactionTransactionHash(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTransaction>) throws -> OpaqueRustPointer<Types.CSL_TransactionHash> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_transaction_hash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_bodies_from_bytes
        public static func fixedTransactionBodiesFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_FixedTransactionBodies> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_bodies_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_bodies_from_hex
        public static func fixedTransactionBodiesFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_FixedTransactionBodies> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_bodies_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_bodies_new
        public static func fixedTransactionBodiesNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_bodies_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_bodies_len
        public static func fixedTransactionBodiesLen(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTransactionBodies>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_bodies_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_body_from_bytes
        public static func fixedTransactionBodyFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_FixedTransactionBody> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_body_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_body_from_hex
        public static func fixedTransactionBodyFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_FixedTransactionBody> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_body_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_body_transaction_body
        public static func fixedTransactionBodyTransactionBody(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTransactionBody>) throws -> OpaqueRustPointer<Types.CSL_TransactionBody> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_body_transaction_body(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
    
        // Swift Wrapper call to csl_bridge_fixed_transaction_fee
        public static func fixedTransactionFee(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTransaction>) throws -> OpaqueRustPointer<Types.CSL_BigNum> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_fee(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
    
    
    

        // Swift Wrapper call to csl_bridge_fixed_transaction_body_tx_hash
        public static func fixedTransactionBodyTxHash(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTransactionBody>) throws -> OpaqueRustPointer<Types.CSL_TransactionHash> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_body_tx_hash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_transaction_body_original_bytes
        public static func fixedTransactionBodyOriginalBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTransactionBody>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_transaction_body_original_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_tx_witnesses_set_tx_witnesses_set
        public static func fixedTxWitnessesSetTxWitnessesSet(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTxWitnessesSet>) throws -> OpaqueRustPointer<Types.CSL_TransactionWitnessSet> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_tx_witnesses_set_tx_witnesses_set(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_tx_witnesses_set_to_bytes
        public static func fixedTxWitnessesSetToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTxWitnessesSet>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_tx_witnesses_set_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_tx_witnesses_set_from_bytes
        public static func fixedTxWitnessesSetFromBytes(data_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_FixedTxWitnessesSet> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_tx_witnesses_set_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_versioned_block_from_bytes
        public static func fixedVersionedBlockFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_FixedVersionedBlock> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_versioned_block_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_versioned_block_from_hex
        public static func fixedVersionedBlockFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_FixedVersionedBlock> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_versioned_block_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_fixed_versioned_block_era
        public static func fixedVersionedBlockEra(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedVersionedBlock>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_fixed_versioned_block_era(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_general_transaction_metadata_to_bytes
        public static func generalTransactionMetadataToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_GeneralTransactionMetadata>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_general_transaction_metadata_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_general_transaction_metadata_from_bytes
        public static func generalTransactionMetadataFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_GeneralTransactionMetadata> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_general_transaction_metadata_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_general_transaction_metadata_to_hex
        public static func generalTransactionMetadataToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_GeneralTransactionMetadata>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_general_transaction_metadata_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_general_transaction_metadata_from_hex
        public static func generalTransactionMetadataFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_GeneralTransactionMetadata> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_general_transaction_metadata_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_general_transaction_metadata_to_json
        public static func generalTransactionMetadataToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_GeneralTransactionMetadata>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_general_transaction_metadata_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_general_transaction_metadata_from_json
        public static func generalTransactionMetadataFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_GeneralTransactionMetadata> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_general_transaction_metadata_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_general_transaction_metadata_new
        public static func generalTransactionMetadataNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_general_transaction_metadata_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_general_transaction_metadata_len
        public static func generalTransactionMetadataLen(self_rptr p1: OpaqueRustPointer<Types.CSL_GeneralTransactionMetadata>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_general_transaction_metadata_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_delegate_hash_from_bytes
        public static func genesisDelegateHashFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_GenesisDelegateHash> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_delegate_hash_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_delegate_hash_to_bytes
        public static func genesisDelegateHashToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_GenesisDelegateHash>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_delegate_hash_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_delegate_hash_to_bech32
        public static func genesisDelegateHashToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_GenesisDelegateHash>, prefix_str p2: String) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_delegate_hash_to_bech32(c_p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_delegate_hash_from_bech32
        public static func genesisDelegateHashFromBech32(bech_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_GenesisDelegateHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_delegate_hash_from_bech32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_delegate_hash_to_hex
        public static func genesisDelegateHashToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_GenesisDelegateHash>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_delegate_hash_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_delegate_hash_from_hex
        public static func genesisDelegateHashFromHex(hex_str p1: String) throws -> OpaqueRustPointer<Types.CSL_GenesisDelegateHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_delegate_hash_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_hash_from_bytes
        public static func genesisHashFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_GenesisHash> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_hash_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_hash_to_bytes
        public static func genesisHashToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_GenesisHash>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_hash_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_hash_to_bech32
        public static func genesisHashToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_GenesisHash>, prefix_str p2: String) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_hash_to_bech32(c_p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_hash_from_bech32
        public static func genesisHashFromBech32(bech_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_GenesisHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_hash_from_bech32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_hash_to_hex
        public static func genesisHashToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_GenesisHash>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_hash_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_hash_from_hex
        public static func genesisHashFromHex(hex_str p1: String) throws -> OpaqueRustPointer<Types.CSL_GenesisHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_hash_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_hashes_to_bytes
        public static func genesisHashesToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_GenesisHashes>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_hashes_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_hashes_from_bytes
        public static func genesisHashesFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_GenesisHashes> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_hashes_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_hashes_to_hex
        public static func genesisHashesToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_GenesisHashes>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_hashes_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_hashes_from_hex
        public static func genesisHashesFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_GenesisHashes> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_hashes_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_hashes_to_json
        public static func genesisHashesToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_GenesisHashes>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_hashes_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_hashes_from_json
        public static func genesisHashesFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_GenesisHashes> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_hashes_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_hashes_new
        public static func genesisHashesNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_hashes_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_hashes_len
        public static func genesisHashesLen(self_rptr p1: OpaqueRustPointer<Types.CSL_GenesisHashes>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_hashes_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_key_delegation_to_bytes
        public static func genesisKeyDelegationToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_GenesisKeyDelegation>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_key_delegation_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_key_delegation_from_bytes
        public static func genesisKeyDelegationFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_GenesisKeyDelegation> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_key_delegation_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_key_delegation_to_hex
        public static func genesisKeyDelegationToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_GenesisKeyDelegation>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_key_delegation_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_key_delegation_from_hex
        public static func genesisKeyDelegationFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_GenesisKeyDelegation> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_key_delegation_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_key_delegation_to_json
        public static func genesisKeyDelegationToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_GenesisKeyDelegation>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_key_delegation_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_key_delegation_from_json
        public static func genesisKeyDelegationFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_GenesisKeyDelegation> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_key_delegation_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_key_delegation_vrf_keyhash
        public static func genesisKeyDelegationVrfKeyhash(self_rptr p1: OpaqueRustPointer<Types.CSL_GenesisKeyDelegation>) throws -> OpaqueRustPointer<Types.CSL_VRFKeyHash> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_key_delegation_vrf_keyhash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_genesis_key_delegation_new
        public static func genesisKeyDelegationNew(genesishash_rptr p1: OpaqueRustPointer<Types.CSL_GenesisHash>, genesis_delegate_hash_rptr p2: OpaqueRustPointer<Types.CSL_GenesisDelegateHash>, vrf_keyhash_rptr p3: OpaqueRustPointer<Types.CSL_VRFKeyHash>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_genesis_key_delegation_new(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_to_bytes
        public static func governanceActionToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceAction>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_from_bytes
        public static func governanceActionFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_GovernanceAction> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_to_hex
        public static func governanceActionToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceAction>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_from_hex
        public static func governanceActionFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_GovernanceAction> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_to_json
        public static func governanceActionToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceAction>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_from_json
        public static func governanceActionFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_GovernanceAction> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_new_parameter_change_action
        public static func governanceActionNewParameterChangeAction(parameter_change_action_rptr p1: OpaqueRustPointer<Types.CSL_ParameterChangeAction>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_new_parameter_change_action(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_new_hard_fork_initiation_action
        public static func governanceActionNewHardForkInitiationAction(hard_fork_initiation_action_rptr p1: OpaqueRustPointer<Types.CSL_HardForkInitiationAction>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_new_hard_fork_initiation_action(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_new_treasury_withdrawals_action
        public static func governanceActionNewTreasuryWithdrawalsAction(treasury_withdrawals_action_rptr p1: OpaqueRustPointer<Types.CSL_TreasuryWithdrawalsAction>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_new_treasury_withdrawals_action(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_new_no_confidence_action
        public static func governanceActionNewNoConfidenceAction(no_confidence_action_rptr p1: OpaqueRustPointer<Types.CSL_NoConfidenceAction>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_new_no_confidence_action(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_new_new_committee_action
        public static func governanceActionNewNewCommitteeAction(new_committee_action_rptr p1: OpaqueRustPointer<Types.CSL_UpdateCommitteeAction>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_new_new_committee_action(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_new_new_constitution_action
        public static func governanceActionNewNewConstitutionAction(new_constitution_action_rptr p1: OpaqueRustPointer<Types.CSL_NewConstitutionAction>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_new_new_constitution_action(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_new_info_action
        public static func governanceActionNewInfoAction(info_action_rptr p1: OpaqueRustPointer<Types.CSL_InfoAction>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_new_info_action(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_governance_action_kind
        public static func governanceActionKind(self_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceAction>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_governance_action_kind(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
}
