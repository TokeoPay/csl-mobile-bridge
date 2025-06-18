import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension CSLKit {
// Swift Wrapper call to csl_bridge_withdrawals_builder_new
        public static func withdrawalsBuilderNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_withdrawals_builder_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_withdrawals_builder_has_plutus_scripts
        public static func withdrawalsBuilderHasPlutusScripts(self_rptr p1: OpaqueRustPointer<Types.CSL_WithdrawalsBuilder>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_withdrawals_builder_has_plutus_scripts(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_calculate_ex_units_ceil_cost
        public static func calculateExUnitsCeilCost(ex_units_rptr p1: OpaqueRustPointer<Types.CSL_ExUnits>, ex_unit_prices_rptr p2: OpaqueRustPointer<Types.CSL_ExUnitPrices>) throws -> OpaqueRustPointer<Types.CSL_cardano_serialization_lib> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_calculate_ex_units_ceil_cost(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_create_send_all
        public static func createSendAll(address_rptr p1: OpaqueRustPointer<Types.CSL_Address>, utxos_rptr p2: OpaqueRustPointer<Types.CSL_TransactionUnspentOutputs>, config_rptr p3: OpaqueRustPointer<Types.CSL_TransactionBuilderConfig>) throws -> OpaqueRustPointer<Types.CSL_cardano_serialization_lib> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_create_send_all(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_decode_arbitrary_bytes_from_metadatum
        public static func decodeArbitraryBytesFromMetadatum(metadata_rptr p1: OpaqueRustPointer<Types.CSL_TransactionMetadatum>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_decode_arbitrary_bytes_from_metadatum(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_decode_metadatum_to_json_str
        public static func decodeMetadatumToJsonStr(metadatum_rptr p1: OpaqueRustPointer<Types.CSL_TransactionMetadatum>, schema_int p2: Int32) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_decode_metadatum_to_json_str(c_p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_decode_plutus_datum_to_json_str
        public static func decodePlutusDatumToJsonStr(datum_rptr p1: OpaqueRustPointer<Types.CSL_PlutusData>, schema_int p2: Int32) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_decode_plutus_datum_to_json_str(c_p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_decrypt_with_password
        public static func decryptWithPassword(password_str p1: String, data_str p2: String) throws -> String {
            
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_decrypt_with_password(p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_encode_arbitrary_bytes_as_metadatum
        public static func encodeArbitraryBytesAsMetadatum(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_None> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_encode_arbitrary_bytes_as_metadatum(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_encode_json_str_to_metadatum
        public static func encodeJsonStrToMetadatum(json_str p1: String, schema_int p2: Int32) throws -> OpaqueRustPointer<Types.CSL_cardano_serialization_lib> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_encode_json_str_to_metadatum(p1, p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_encode_json_str_to_native_script
        public static func encodeJsonStrToNativeScript(json_str p1: String, self_xpub_str p2: String, schema_int p3: Int32) throws -> OpaqueRustPointer<Types.CSL_cardano_serialization_lib> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_encode_json_str_to_native_script(p1, p2, p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_encode_json_str_to_plutus_datum
        public static func encodeJsonStrToPlutusDatum(json_str p1: String, schema_int p2: Int32) throws -> OpaqueRustPointer<Types.CSL_cardano_serialization_lib> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_encode_json_str_to_plutus_datum(p1, p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_encrypt_with_password
        public static func encryptWithPassword(password_str p1: String, salt_str p2: String, nonce_str p3: String, data_str p4: String) throws -> String {
            
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_encrypt_with_password(p1, p2, p3, p4, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_get_deposit
        public static func getDeposit(txbody_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBody>, pool_deposit_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>, key_deposit_rptr p3: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_cardano_serialization_lib> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_get_deposit(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_get_implicit_input
        public static func getImplicitInput(txbody_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBody>, pool_deposit_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>, key_deposit_rptr p3: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_cardano_serialization_lib> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_get_implicit_input(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_has_transaction_set_tag
        public static func hasTransactionSetTag(tx_bytes_data p1: Data) throws -> Int32 {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_has_transaction_set_tag(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_hash_auxiliary_data
        public static func hashAuxiliaryData(auxiliary_data_rptr p1: OpaqueRustPointer<Types.CSL_AuxiliaryData>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_hash_auxiliary_data(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_hash_plutus_data
        public static func hashPlutusData(plutus_data_rptr p1: OpaqueRustPointer<Types.CSL_PlutusData>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_hash_plutus_data(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_hash_script_data
        public static func hashScriptData(redeemers_rptr p1: OpaqueRustPointer<Types.CSL_Redeemers>, cost_models_rptr p2: OpaqueRustPointer<Types.CSL_Costmdls>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_hash_script_data(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_hash_script_data_with_datums
        public static func hashScriptDataWithDatums(redeemers_rptr p1: OpaqueRustPointer<Types.CSL_Redeemers>, cost_models_rptr p2: OpaqueRustPointer<Types.CSL_Costmdls>, datums_rptr p3: OpaqueRustPointer<Types.CSL_PlutusList>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_hash_script_data_with_datums(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_make_daedalus_bootstrap_witness
        public static func makeDaedalusBootstrapWitness(tx_body_hash_rptr p1: OpaqueRustPointer<Types.CSL_TransactionHash>, addr_rptr p2: OpaqueRustPointer<Types.CSL_ByronAddress>, key_rptr p3: OpaqueRustPointer<Types.CSL_LegacyDaedalusPrivateKey>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_make_daedalus_bootstrap_witness(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_make_icarus_bootstrap_witness
        public static func makeIcarusBootstrapWitness(tx_body_hash_rptr p1: OpaqueRustPointer<Types.CSL_TransactionHash>, addr_rptr p2: OpaqueRustPointer<Types.CSL_ByronAddress>, key_rptr p3: OpaqueRustPointer<Types.CSL_Bip32PrivateKey>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_make_icarus_bootstrap_witness(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_make_vkey_witness
        public static func makeVkeyWitness(tx_body_hash_rptr p1: OpaqueRustPointer<Types.CSL_TransactionHash>, sk_rptr p2: OpaqueRustPointer<Types.CSL_PrivateKey>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_make_vkey_witness(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_min_ada_for_output
        public static func minAdaForOutput(output_rptr p1: OpaqueRustPointer<Types.CSL_TransactionOutput>, data_cost_rptr p2: OpaqueRustPointer<Types.CSL_DataCost>) throws -> OpaqueRustPointer<Types.CSL_cardano_serialization_lib> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_min_ada_for_output(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_min_fee
        public static func minFee(tx_rptr p1: OpaqueRustPointer<Types.CSL_Transaction>, linear_fee_rptr p2: OpaqueRustPointer<Types.CSL_LinearFee>) throws -> OpaqueRustPointer<Types.CSL_cardano_serialization_lib> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_min_fee(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_min_ref_script_fee
        public static func minRefScriptFee(total_ref_scripts_size_long p1: Int64, ref_script_coins_per_byte_rptr p2: OpaqueRustPointer<Types.CSL_UnitInterval>) throws -> OpaqueRustPointer<Types.CSL_cardano_serialization_lib> {
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_min_ref_script_fee(p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_min_script_fee
        public static func minScriptFee(tx_rptr p1: OpaqueRustPointer<Types.CSL_Transaction>, ex_unit_prices_rptr p2: OpaqueRustPointer<Types.CSL_ExUnitPrices>) throws -> OpaqueRustPointer<Types.CSL_cardano_serialization_lib> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_min_script_fee(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
}
