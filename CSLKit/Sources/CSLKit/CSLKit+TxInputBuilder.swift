import CSLKitObjC
import Foundation
import react_native_haskell_shelley

extension CSLKit {

    // Swift Wrapper call to csl_bridge_linear_fee_constant
    public static func linearFeeConstant(self_rptr p1: OpaqueRustPointer<Types.CSL_LinearFee>)
        throws -> OpaqueRustPointer<Types.CSL_LinearFee>
    {
        var c_p1 = p1.cPointer
        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_linear_fee_constant(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_linear_fee_coefficient
    public static func linearFeeCoefficient(self_rptr p1: OpaqueRustPointer<Types.CSL_LinearFee>)
        throws -> OpaqueRustPointer<Types.CSL_LinearFee>
    {
        var c_p1 = p1.cPointer
        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_linear_fee_coefficient(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_tx_inputs_builder_add_regular_utxo
    public static func txInputsBuilderAddRegularUtxo(
        self_rptr p1: OpaqueRustPointer<Types.CSL_TxInputsBuilder>,
        utxo_rptr p2: OpaqueRustPointer<Types.CSL_TransactionUnspentOutput>
    ) throws -> Bool {
        var c_p1 = p1.cPointer
        var c_p2 = p2.cPointer

        var error: CharPtr? = nil
        let success = csl_bridge_tx_inputs_builder_add_regular_utxo(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_tx_inputs_builder_add_plutus_script_utxo
    public static func txInputsBuilderAddPlutusScriptUtxo(
        self_rptr p1: OpaqueRustPointer<Types.CSL_TxInputsBuilder>,
        utxo_rptr p2: OpaqueRustPointer<Types.CSL_TransactionUnspentOutput>,
        witness_rptr p3: OpaqueRustPointer<Types.CSL_PlutusWitness>
    ) throws -> Bool {
        var c_p1 = p1.cPointer
        var c_p2 = p2.cPointer
        var c_p3 = p3.cPointer

        var error: CharPtr? = nil
        let success = csl_bridge_tx_inputs_builder_add_plutus_script_utxo(c_p1, c_p2, c_p3, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_tx_inputs_builder_add_native_script_utxo
    public static func txInputsBuilderAddNativeScriptUtxo(
        self_rptr p1: OpaqueRustPointer<Types.CSL_TxInputsBuilder>,
        utxo_rptr p2: OpaqueRustPointer<Types.CSL_TransactionUnspentOutput>,
        witness_rptr p3: OpaqueRustPointer<Types.CSL_NativeScriptSource>
    ) throws -> Bool {
        var c_p1 = p1.cPointer
        var c_p2 = p2.cPointer
        var c_p3 = p3.cPointer

        var error: CharPtr? = nil
        let success = csl_bridge_tx_inputs_builder_add_native_script_utxo(c_p1, c_p2, c_p3, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_tx_inputs_builder_add_key_input
    public static func txInputsBuilderAddKeyInput(
        self_rptr p1: OpaqueRustPointer<Types.CSL_TxInputsBuilder>,
        hash_rptr p2: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>,
        input_rptr p3: OpaqueRustPointer<Types.CSL_TransactionInput>,
        amount_rptr p4: OpaqueRustPointer<Types.CSL_Value>
    ) throws -> Bool {
        var c_p1 = p1.cPointer
        var c_p2 = p2.cPointer
        var c_p3 = p3.cPointer
        var c_p4 = p4.cPointer

        var error: CharPtr? = nil
        let success = csl_bridge_tx_inputs_builder_add_key_input(c_p1, c_p2, c_p3, c_p4, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_tx_inputs_builder_add_native_script_input
    public static func txInputsBuilderAddNativeScriptInput(
        self_rptr p1: OpaqueRustPointer<Types.CSL_TxInputsBuilder>,
        script_rptr p2: OpaqueRustPointer<Types.CSL_NativeScriptSource>,
        input_rptr p3: OpaqueRustPointer<Types.CSL_TransactionInput>,
        amount_rptr p4: OpaqueRustPointer<Types.CSL_Value>
    ) throws -> Bool {
        var c_p1 = p1.cPointer
        var c_p2 = p2.cPointer
        var c_p3 = p3.cPointer
        var c_p4 = p4.cPointer

        var error: CharPtr? = nil
        let success = csl_bridge_tx_inputs_builder_add_native_script_input(
            c_p1, c_p2, c_p3, c_p4, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_tx_inputs_builder_add_plutus_script_input
    public static func txInputsBuilderAddPlutusScriptInput(
        self_rptr p1: OpaqueRustPointer<Types.CSL_TxInputsBuilder>,
        witness_rptr p2: OpaqueRustPointer<Types.CSL_PlutusWitness>,
        input_rptr p3: OpaqueRustPointer<Types.CSL_TransactionInput>,
        amount_rptr p4: OpaqueRustPointer<Types.CSL_Value>
    ) throws -> Bool {
        var c_p1 = p1.cPointer
        var c_p2 = p2.cPointer
        var c_p3 = p3.cPointer
        var c_p4 = p4.cPointer

        var error: CharPtr? = nil
        let success = csl_bridge_tx_inputs_builder_add_plutus_script_input(
            c_p1, c_p2, c_p3, c_p4, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_tx_inputs_builder_add_bootstrap_input
    public static func txInputsBuilderAddBootstrapInput(
        self_rptr p1: OpaqueRustPointer<Types.CSL_TxInputsBuilder>,
        address_rptr p2: OpaqueRustPointer<Types.CSL_ByronAddress>,
        input_rptr p3: OpaqueRustPointer<Types.CSL_TransactionInput>,
        amount_rptr p4: OpaqueRustPointer<Types.CSL_Value>
    ) throws -> Bool {
        var c_p1 = p1.cPointer
        var c_p2 = p2.cPointer
        var c_p3 = p3.cPointer
        var c_p4 = p4.cPointer

        var error: CharPtr? = nil
        let success = csl_bridge_tx_inputs_builder_add_bootstrap_input(
            c_p1, c_p2, c_p3, c_p4, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_tx_inputs_builder_add_regular_input
    public static func txInputsBuilderAddRegularInput(
        self_rptr p1: OpaqueRustPointer<Types.CSL_TxInputsBuilder>,
        address_rptr p2: OpaqueRustPointer<Types.CSL_Address>,
        input_rptr p3: OpaqueRustPointer<Types.CSL_TransactionInput>,
        amount_rptr p4: OpaqueRustPointer<Types.CSL_Value>
    ) throws -> Bool {
        var c_p1 = p1.cPointer
        var c_p2 = p2.cPointer
        var c_p3 = p3.cPointer
        var c_p4 = p4.cPointer

        var error: CharPtr? = nil
        let success = csl_bridge_tx_inputs_builder_add_regular_input(c_p1, c_p2, c_p3, c_p4, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_tx_inputs_builder_get_ref_inputs
    public static func txInputsBuilderGetRefInputs(
        self_rptr p1: OpaqueRustPointer<Types.CSL_TxInputsBuilder>
    ) throws -> OpaqueRustPointer<Types.CSL_TxInputsBuilder> {
        var c_p1 = p1.cPointer
        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_tx_inputs_builder_get_ref_inputs(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_tx_inputs_builder_get_native_input_scripts
    public static func txInputsBuilderGetNativeInputScripts(
        self_rptr p1: OpaqueRustPointer<Types.CSL_TxInputsBuilder>
    ) throws -> OpaqueRustPointer<Types.CSL_TxInputsBuilder> {
        var c_p1 = p1.cPointer
        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_tx_inputs_builder_get_native_input_scripts(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_tx_inputs_builder_get_plutus_input_scripts
    public static func txInputsBuilderGetPlutusInputScripts(
        self_rptr p1: OpaqueRustPointer<Types.CSL_TxInputsBuilder>
    ) throws -> OpaqueRustPointer<Types.CSL_TxInputsBuilder> {
        var c_p1 = p1.cPointer
        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_tx_inputs_builder_get_plutus_input_scripts(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_tx_inputs_builder_add_required_signer
    public static func txInputsBuilderAddRequiredSigner(
        self_rptr p1: OpaqueRustPointer<Types.CSL_TxInputsBuilder>,
        key_rptr p2: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>
    ) throws -> Bool {
        var c_p1 = p1.cPointer
        var c_p2 = p2.cPointer

        var error: CharPtr? = nil
        let success = csl_bridge_tx_inputs_builder_add_required_signer(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_tx_inputs_builder_add_required_signers
    public static func txInputsBuilderAddRequiredSigners(
        self_rptr p1: OpaqueRustPointer<Types.CSL_TxInputsBuilder>,
        keys_rptr p2: OpaqueRustPointer<Types.CSL_Ed25519KeyHashes>
    ) throws -> Bool {
        var c_p1 = p1.cPointer
        var c_p2 = p2.cPointer

        var error: CharPtr? = nil
        let success = csl_bridge_tx_inputs_builder_add_required_signers(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_tx_inputs_builder_inputs
    public static func txInputsBuilderInputs(
        self_rptr p1: OpaqueRustPointer<Types.CSL_TxInputsBuilder>
    ) throws -> OpaqueRustPointer<Types.CSL_TxInputsBuilder> {
        var c_p1 = p1.cPointer
        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_tx_inputs_builder_inputs(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_tx_inputs_builder_inputs_option
    public static func txInputsBuilderInputsOption(
        self_rptr p1: OpaqueRustPointer<Types.CSL_TxInputsBuilder>
    ) throws -> OpaqueRustPointer<Types.CSL_TxInputsBuilder> {
        var c_p1 = p1.cPointer
        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_tx_inputs_builder_inputs_option(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_constr_plutus_data_new
    public static func constrPlutusDataNew(
        alternative_rptr p1: OpaqueRustPointer<Types.CSL_BigNum>,
        data_rptr p2: OpaqueRustPointer<Types.CSL_PlutusList>
    ) throws -> OpaqueRustPointer<Types.CSL_None> {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_constr_plutus_data_new(c_p1, c_p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_cost_model_to_bytes
    public static func costModelToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_CostModel>) throws
        -> Data
    {
        let c_p1 = p1.cPointer
        var result = try DataPtr.init(fromData: Data())
        var error: CharPtr? = nil
        let success = csl_bridge_cost_model_to_bytes(c_p1, &result, &error)
        if success {
            return Data(dataPtr: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_cost_model_from_bytes
    public static func costModelFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<
        Types.CSL_CostModel
    > {
        var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
        let c_p1_len = UInt(p1.count)
        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_cost_model_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_cost_model_to_hex
    public static func costModelToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_CostModel>) throws
        -> String
    {
        let c_p1 = p1.cPointer
        var result: CharPtr? = nil
        var error: CharPtr? = nil
        let success = csl_bridge_cost_model_to_hex(c_p1, &result, &error)
        if success {
            return String(cString: result!)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_cost_model_from_hex
    public static func costModelFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<
        Types.CSL_CostModel
    > {

        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_cost_model_from_hex(p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_cost_model_to_json
    public static func costModelToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_CostModel>) throws
        -> String
    {
        let c_p1 = p1.cPointer
        var result: CharPtr? = nil
        var error: CharPtr? = nil
        let success = csl_bridge_cost_model_to_json(c_p1, &result, &error)
        if success {
            return String(cString: result!)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_cost_model_from_json
    public static func costModelFromJson(json_str p1: String) throws -> OpaqueRustPointer<
        Types.CSL_CostModel
    > {

        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_cost_model_from_json(p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_cost_model_new
    public static func costModelNew() throws -> OpaqueRustPointer<Types.CSL_CostModel> {

        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_cost_model_new(&result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }


    // Swift Wrapper call to csl_bridge_cost_model_set
    @available(macOS 15.0, *)
    public static func costModelSet(
            self_rptr me: OpaqueRustPointer<Types.CSL_CostModel>, 
            operation: Int64, 
            cost_rptr p3: OpaqueRustPointer<Types.CSL_Int>) throws {
        let c_p1 = me.cPointer
        let c_p2 = operation
        let c_p3 = p3.cPointer
        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_cost_model_set(c_p1, c_p2, c_p3, &result, &error)
        if !success {
            throw createError(from: error)
        }
    }


    // Swift Wrapper call to csl_bridge_cost_model_get
    public static func costModelGet(self_rptr p1: OpaqueRustPointer<Types.CSL_CostModel>, operation: Int64) throws -> OpaqueRustPointer<Types.CSL_Int> {
        let c_p1 = p1.cPointer
        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_cost_model_get(c_p1, operation, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }





    // Swift Wrapper call to csl_bridge_cost_model_len
    public static func costModelLen(self_rptr p1: OpaqueRustPointer<Types.CSL_CostModel>) throws
        -> Int64
    {
        let c_p1 = p1.cPointer
        var result = Int64()
        var error: CharPtr? = nil
        let success = csl_bridge_cost_model_len(c_p1, &result, &error)
        if success {
            return result
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_costmdls_to_bytes
    public static func costmdlsToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Costmdls>) throws
        -> Data
    {
        let c_p1 = p1.cPointer
        var result = try DataPtr.init(fromData: Data())
        var error: CharPtr? = nil
        let success = csl_bridge_costmdls_to_bytes(c_p1, &result, &error)
        if success {
            return Data(dataPtr: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_costmdls_insert
    public static func costmdlsInsert(
        self_rptr p1: OpaqueRustPointer<Types.CSL_Costmdls>,
        key_rptr p2: OpaqueRustPointer<Types.CSL_LanguageVersion>,
        value_rptr p3: OpaqueRustPointer<Types.CSL_CostModel>
    ) throws -> OpaqueRustPointer<Types.CSL_None> {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        let c_p3 = p3.cPointer
        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_costmdls_insert(c_p1, c_p2, c_p3, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_costmdls_get
    public static func costmdlsGet(
        self_rptr p1: OpaqueRustPointer<Types.CSL_Costmdls>,
        key_rptr p2: OpaqueRustPointer<Types.CSL_LanguageVersion>
    ) throws -> OpaqueRustPointer<Types.CSL_CostModel> {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_costmdls_get(c_p1, c_p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_costmdls_keys
    public static func costmdlsKeys(self_rptr p1: OpaqueRustPointer<Types.CSL_Costmdls>) throws
        -> OpaqueRustPointer<Types.CSL_LanguageVersions>
    {
        let c_p1 = p1.cPointer
        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_costmdls_keys(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_costmdls_retain_language_versions
    public static func costmdlsRetainLanguageVersions(
        self_rptr p1: OpaqueRustPointer<Types.CSL_Costmdls>,
        language_versions_rptr p2: OpaqueRustPointer<Types.CSL_LanguageVersions>
    ) throws -> OpaqueRustPointer<Types.CSL_Costmdls> {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_costmdls_retain_language_versions(c_p1, c_p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_costmdls_from_bytes
    public static func costmdlsFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<
        Types.CSL_Costmdls
    > {
        var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
        let c_p1_len = UInt(p1.count)
        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_costmdls_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_costmdls_to_hex
    public static func costmdlsToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Costmdls>) throws
        -> String
    {
        let c_p1 = p1.cPointer
        var result: CharPtr? = nil
        var error: CharPtr? = nil
        let success = csl_bridge_costmdls_to_hex(c_p1, &result, &error)
        if success {
            return String(cString: result!)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_costmdls_from_hex
    public static func costmdlsFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<
        Types.CSL_Costmdls
    > {

        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_costmdls_from_hex(p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_costmdls_to_json
    public static func costmdlsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Costmdls>) throws
        -> String
    {
        let c_p1 = p1.cPointer
        var result: CharPtr? = nil
        var error: CharPtr? = nil
        let success = csl_bridge_costmdls_to_json(c_p1, &result, &error)
        if success {
            return String(cString: result!)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_costmdls_from_json
    public static func costmdlsFromJson(json_str p1: String) throws -> OpaqueRustPointer<
        Types.CSL_Costmdls
    > {

        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_costmdls_from_json(p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_costmdls_new
    public static func costmdlsNew() throws -> OpaqueRustPointer<Types.CSL_None> {

        var result = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_costmdls_new(&result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }



    

    // Swift Wrapper call to csl_bridge_costmdls_len
    public static func costmdlsLen(self_rptr p1: OpaqueRustPointer<Types.CSL_Costmdls>) throws
        -> Int64
    {
        let c_p1 = p1.cPointer
        var result = Int64()
        var error: CharPtr? = nil
        let success = csl_bridge_costmdls_len(c_p1, &result, &error)
        if success {
            return result
        } else {
            throw createError(from: error)
        }
    }

}
