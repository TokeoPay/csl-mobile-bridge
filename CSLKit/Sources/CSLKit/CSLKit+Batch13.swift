import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension CSLKit {
// Swift Wrapper call to csl_bridge_transaction_builder_add_change_if_needed
        public static func transactionBuilderAddChangeIfNeeded(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, address_rptr p2: OpaqueRustPointer<Types.CSL_Address>) throws -> Bool {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_builder_add_change_if_needed(c_p1, c_p2, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_builder_add_change_if_needed_with_datum
        public static func transactionBuilderAddChangeIfNeededWithDatum(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, address_rptr p2: OpaqueRustPointer<Types.CSL_Address>, plutus_data_rptr p3: OpaqueRustPointer<Types.CSL_OutputDatum>) throws -> Bool {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_builder_add_change_if_needed_with_datum(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_builder_full_size
        public static func transactionBuilderFullSize(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_builder_full_size(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_builder_output_sizes
        public static func transactionBuilderOutputSizes(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_builder_output_sizes(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_builder_config_builder_new
        public static func transactionBuilderConfigBuilderNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_builder_config_builder_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_hash_from_bytes
        public static func transactionHashFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_TransactionHash> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_hash_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_hash_to_bytes
        public static func transactionHashToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionHash>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_hash_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_hash_to_bech32
        public static func transactionHashToBech32(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionHash>, prefix_str p2: String) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_hash_to_bech32(c_p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_hash_from_bech32
        public static func transactionHashFromBech32(bech_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_hash_from_bech32(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_hash_to_hex
        public static func transactionHashToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionHash>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_hash_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_hash_from_hex
        public static func transactionHashFromHex(hex_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionHash> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_hash_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_input_to_bytes
        public static func transactionInputToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionInput>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_input_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_input_from_bytes
        public static func transactionInputFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_TransactionInput> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_input_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_input_to_hex
        public static func transactionInputToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionInput>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_input_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_input_from_hex
        public static func transactionInputFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionInput> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_input_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_input_to_json
        public static func transactionInputToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionInput>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_input_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_input_from_json
        public static func transactionInputFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionInput> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_input_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_input_transaction_id
        public static func transactionInputTransactionId(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionInput>) throws -> OpaqueRustPointer<Types.CSL_TransactionHash> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_input_transaction_id(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_input_index
        public static func transactionInputIndex(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionInput>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_input_index(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_input_new
        public static func transactionInputNew(transaction_id_rptr p1: OpaqueRustPointer<Types.CSL_TransactionHash>, index_long p2: Int64) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_input_new(c_p1, p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_inputs_to_bytes
        public static func transactionInputsToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionInputs>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_inputs_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_inputs_from_bytes
        public static func transactionInputsFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_TransactionInputs> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_inputs_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_inputs_to_hex
        public static func transactionInputsToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionInputs>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_inputs_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_inputs_from_hex
        public static func transactionInputsFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionInputs> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_inputs_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_inputs_to_json
        public static func transactionInputsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionInputs>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_inputs_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_inputs_from_json
        public static func transactionInputsFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionInputs> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_inputs_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_inputs_new
        public static func transactionInputsNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_inputs_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_inputs_len
        public static func transactionInputsLen(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionInputs>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_inputs_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_inputs_add
        public static func transactionInputsAdd(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionInputs>, input_rptr p2: OpaqueRustPointer<Types.CSL_TransactionInput>) throws -> Bool {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_inputs_add(c_p1, c_p2, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_to_bytes
        public static func transactionMetadatumToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionMetadatum>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_from_bytes
        public static func transactionMetadatumFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_TransactionMetadatum> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_to_hex
        public static func transactionMetadatumToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionMetadatum>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_from_hex
        public static func transactionMetadatumFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionMetadatum> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_new_map
        public static func transactionMetadatumNewMap(map_rptr p1: OpaqueRustPointer<Types.CSL_MetadataMap>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_new_map(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_new_list
        public static func transactionMetadatumNewList(list_rptr p1: OpaqueRustPointer<Types.CSL_MetadataList>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_new_list(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_new_int
        public static func transactionMetadatumNewInt(int_value_rptr p1: OpaqueRustPointer<Types.CSL_Int>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_new_int(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_new_bytes
        public static func transactionMetadatumNewBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_TransactionMetadatum> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_new_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_new_text
        public static func transactionMetadatumNewText(text_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionMetadatum> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_new_text(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_kind
        public static func transactionMetadatumKind(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionMetadatum>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_kind(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_as_bytes
        public static func transactionMetadatumAsBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionMetadatum>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_as_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_as_text
        public static func transactionMetadatumAsText(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionMetadatum>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_as_text(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_labels_to_bytes
        public static func transactionMetadatumLabelsToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionMetadatumLabels>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_labels_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_labels_from_bytes
        public static func transactionMetadatumLabelsFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_TransactionMetadatumLabels> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_labels_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_labels_to_hex
        public static func transactionMetadatumLabelsToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionMetadatumLabels>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_labels_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_labels_from_hex
        public static func transactionMetadatumLabelsFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionMetadatumLabels> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_labels_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_labels_new
        public static func transactionMetadatumLabelsNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_labels_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_metadatum_labels_len
        public static func transactionMetadatumLabelsLen(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionMetadatumLabels>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_metadatum_labels_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_to_bytes
        public static func transactionOutputToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutput>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_from_bytes
        public static func transactionOutputFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_TransactionOutput> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_to_hex
        public static func transactionOutputToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutput>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_from_hex
        public static func transactionOutputFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionOutput> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_to_json
        public static func transactionOutputToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutput>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_from_json
        public static func transactionOutputFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionOutput> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_address
        public static func transactionOutputAddress(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutput>) throws -> OpaqueRustPointer<Types.CSL_Address> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_address(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_amount
        public static func transactionOutputAmount(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutput>) throws -> OpaqueRustPointer<Types.CSL_Value> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_amount(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_has_plutus_data
        public static func transactionOutputHasPlutusData(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutput>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_has_plutus_data(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_has_data_hash
        public static func transactionOutputHasDataHash(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutput>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_has_data_hash(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_has_script_ref
        public static func transactionOutputHasScriptRef(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutput>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_has_script_ref(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_new
        public static func transactionOutputNew(address_rptr p1: OpaqueRustPointer<Types.CSL_Address>, amount_rptr p2: OpaqueRustPointer<Types.CSL_Value>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_new(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_serialization_format
        public static func transactionOutputSerializationFormat(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutput>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result: Int32 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_serialization_format(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_amount_builder_with_value
        public static func transactionOutputAmountBuilderWithValue(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutputAmountBuilder>, amount_rptr p2: OpaqueRustPointer<Types.CSL_Value>) throws -> OpaqueRustPointer<Types.CSL_TransactionOutputAmountBuilder> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_amount_builder_with_value(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_amount_builder_with_coin
        public static func transactionOutputAmountBuilderWithCoin(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutputAmountBuilder>, coin_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_TransactionOutputAmountBuilder> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_amount_builder_with_coin(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_amount_builder_with_coin_and_asset
        public static func transactionOutputAmountBuilderWithCoinAndAsset(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutputAmountBuilder>, coin_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>, multiasset_rptr p3: OpaqueRustPointer<Types.CSL_MultiAsset>) throws -> OpaqueRustPointer<Types.CSL_TransactionOutputAmountBuilder> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_amount_builder_with_coin_and_asset(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_amount_builder_with_asset_and_min_required_coin_by_utxo_cost
        public static func transactionOutputAmountBuilderWithAssetAndMinRequiredCoinByUtxoCost(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutputAmountBuilder>, multiasset_rptr p2: OpaqueRustPointer<Types.CSL_MultiAsset>, data_cost_rptr p3: OpaqueRustPointer<Types.CSL_DataCost>) throws -> OpaqueRustPointer<Types.CSL_TransactionOutputAmountBuilder> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_amount_builder_with_asset_and_min_required_coin_by_utxo_cost(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_builder_new
        public static func transactionOutputBuilderNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_builder_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_builder_with_address
        public static func transactionOutputBuilderWithAddress(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutputBuilder>, address_rptr p2: OpaqueRustPointer<Types.CSL_Address>) throws -> OpaqueRustPointer<Types.CSL_TransactionOutputBuilder> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_builder_with_address(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_builder_with_data_hash
        public static func transactionOutputBuilderWithDataHash(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutputBuilder>, data_hash_rptr p2: OpaqueRustPointer<Types.CSL_DataHash>) throws -> OpaqueRustPointer<Types.CSL_TransactionOutputBuilder> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_builder_with_data_hash(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_builder_with_plutus_data
        public static func transactionOutputBuilderWithPlutusData(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutputBuilder>, data_rptr p2: OpaqueRustPointer<Types.CSL_PlutusData>) throws -> OpaqueRustPointer<Types.CSL_TransactionOutputBuilder> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_builder_with_plutus_data(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_output_builder_with_script_ref
        public static func transactionOutputBuilderWithScriptRef(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutputBuilder>, script_ref_rptr p2: OpaqueRustPointer<Types.CSL_ScriptRef>) throws -> OpaqueRustPointer<Types.CSL_TransactionOutputBuilder> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_output_builder_with_script_ref(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_outputs_to_bytes
        public static func transactionOutputsToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutputs>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_outputs_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_outputs_from_bytes
        public static func transactionOutputsFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_TransactionOutputs> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_outputs_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_outputs_to_hex
        public static func transactionOutputsToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutputs>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_outputs_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_outputs_from_hex
        public static func transactionOutputsFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionOutputs> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_outputs_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_outputs_to_json
        public static func transactionOutputsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutputs>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_outputs_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_outputs_from_json
        public static func transactionOutputsFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionOutputs> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_outputs_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_outputs_new
        public static func transactionOutputsNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_outputs_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_outputs_len
        public static func transactionOutputsLen(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutputs>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_outputs_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_unspent_output_to_bytes
        public static func transactionUnspentOutputToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionUnspentOutput>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_unspent_output_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_unspent_output_from_bytes
        public static func transactionUnspentOutputFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_TransactionUnspentOutput> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_unspent_output_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_unspent_output_to_hex
        public static func transactionUnspentOutputToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionUnspentOutput>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_unspent_output_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_unspent_output_from_hex
        public static func transactionUnspentOutputFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionUnspentOutput> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_unspent_output_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_unspent_output_to_json
        public static func transactionUnspentOutputToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionUnspentOutput>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_unspent_output_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_unspent_output_from_json
        public static func transactionUnspentOutputFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionUnspentOutput> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_unspent_output_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_unspent_output_new
        public static func transactionUnspentOutputNew(input_rptr p1: OpaqueRustPointer<Types.CSL_TransactionInput>, output_rptr p2: OpaqueRustPointer<Types.CSL_TransactionOutput>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_unspent_output_new(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_unspent_outputs_to_json
        public static func transactionUnspentOutputsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionUnspentOutputs>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_unspent_outputs_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_unspent_outputs_from_json
        public static func transactionUnspentOutputsFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionUnspentOutputs> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_unspent_outputs_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_unspent_outputs_new
        public static func transactionUnspentOutputsNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_unspent_outputs_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_unspent_outputs_len
        public static func transactionUnspentOutputsLen(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionUnspentOutputs>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_unspent_outputs_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_witness_set_to_bytes
        public static func transactionWitnessSetToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionWitnessSet>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_witness_set_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_witness_set_from_bytes
        public static func transactionWitnessSetFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_TransactionWitnessSet> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_witness_set_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_witness_set_to_hex
        public static func transactionWitnessSetToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionWitnessSet>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_witness_set_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_witness_set_from_hex
        public static func transactionWitnessSetFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionWitnessSet> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_witness_set_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_witness_set_to_json
        public static func transactionWitnessSetToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionWitnessSet>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_witness_set_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_witness_set_from_json
        public static func transactionWitnessSetFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionWitnessSet> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_witness_set_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_witness_set_vkeys
        public static func transactionWitnessSetVkeys(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionWitnessSet>) throws -> OpaqueRustPointer<Types.CSL_Vkeywitnesses> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_witness_set_vkeys(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_witness_set_new
        public static func transactionWitnessSetNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_witness_set_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_witness_sets_to_bytes
        public static func transactionWitnessSetsToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionWitnessSets>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_witness_sets_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_witness_sets_from_bytes
        public static func transactionWitnessSetsFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_TransactionWitnessSets> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_witness_sets_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_witness_sets_to_hex
        public static func transactionWitnessSetsToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionWitnessSets>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_witness_sets_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_witness_sets_from_hex
        public static func transactionWitnessSetsFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionWitnessSets> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_witness_sets_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
}
