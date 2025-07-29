import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension CSLKit {

    // Swift Wrapper call to csl_bridge_transaction_builder_set_inputs
    public static func transactionBuilderSetInputs(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, inputs_rptr p2: OpaqueRustPointer<Types.CSL_TxInputsBuilder>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_inputs(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    public enum CoinSelectionStrategy: Int32 {
        case LargestFirst = 0
        case RandomImprove = 1
        case LargestFirstMultiAsset = 2
        case RandomImproveMultiAsset = 3
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_inputs_from
    public static func transactionBuilderAddInputsFrom(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, inputs_rptr p2: OpaqueRustPointer<Types.TransactionUnspentOutputs>, strategy: CoinSelectionStrategy) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_inputs_from(c_p1, c_p2, strategy.rawValue, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_collateral
    public static func transactionBuilderSetCollateral(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, collateral_rptr p2: OpaqueRustPointer<Types.CSL_TxInputsBuilder>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_collateral(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_collateral_return
    public static func transactionBuilderSetCollateralReturn(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, collateral_return_rptr p2: OpaqueRustPointer<Types.CSL_TransactionOutput>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_collateral_return(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_remove_collateral_return
    public static func transactionBuilderRemoveCollateralReturn(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> Bool {
        let c_p1 = p1.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_remove_collateral_return(c_p1, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_collateral_return_and_total
    public static func transactionBuilderSetCollateralReturnAndTotal(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, collateral_return_rptr p2: OpaqueRustPointer<Types.CSL_TransactionOutput>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_collateral_return_and_total(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_total_collateral
    public static func transactionBuilderSetTotalCollateral(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, total_collateral_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_total_collateral(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_remove_total_collateral
    public static func transactionBuilderRemoveTotalCollateral(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> Bool {
        let c_p1 = p1.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_remove_total_collateral(c_p1, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_total_collateral_and_return
    public static func transactionBuilderSetTotalCollateralAndReturn(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, total_collateral_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>, return_address_rptr p3: OpaqueRustPointer<Types.CSL_Address>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        let c_p3 = p3.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_total_collateral_and_return(c_p1, c_p2, c_p3, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_reference_input
    public static func transactionBuilderAddReferenceInput(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, reference_input_rptr p2: OpaqueRustPointer<Types.CSL_TransactionInput>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_reference_input(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_script_reference_input
    public static func transactionBuilderAddScriptReferenceInput(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, reference_input_rptr p2: OpaqueRustPointer<Types.CSL_TransactionInput>, script_size_long p3: Int64) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_script_reference_input(c_p1, c_p2, p3, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_key_input
    public static func transactionBuilderAddKeyInput(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, hash_rptr p2: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>, input_rptr p3: OpaqueRustPointer<Types.CSL_TransactionInput>, amount_rptr p4: OpaqueRustPointer<Types.CSL_Value>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        let c_p3 = p3.cPointer
        let c_p4 = p4.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_key_input(c_p1, c_p2, c_p3, c_p4, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_native_script_input
    public static func transactionBuilderAddNativeScriptInput(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, script_rptr p2: OpaqueRustPointer<Types.CSL_NativeScript>, input_rptr p3: OpaqueRustPointer<Types.CSL_TransactionInput>, amount_rptr p4: OpaqueRustPointer<Types.CSL_Value>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        let c_p3 = p3.cPointer
        let c_p4 = p4.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_native_script_input(c_p1, c_p2, c_p3, c_p4, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_plutus_script_input
    public static func transactionBuilderAddPlutusScriptInput(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, witness_rptr p2: OpaqueRustPointer<Types.CSL_PlutusWitness>, input_rptr p3: OpaqueRustPointer<Types.CSL_TransactionInput>, amount_rptr p4: OpaqueRustPointer<Types.CSL_Value>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        let c_p3 = p3.cPointer
        let c_p4 = p4.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_plutus_script_input(c_p1, c_p2, c_p3, c_p4, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_bootstrap_input
    public static func transactionBuilderAddBootstrapInput(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, hash_rptr p2: OpaqueRustPointer<Types.CSL_ByronAddress>, input_rptr p3: OpaqueRustPointer<Types.CSL_TransactionInput>, amount_rptr p4: OpaqueRustPointer<Types.CSL_Value>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        let c_p3 = p3.cPointer
        let c_p4 = p4.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_bootstrap_input(c_p1, c_p2, c_p3, c_p4, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_regular_input
    public static func transactionBuilderAddRegularInput(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, address_rptr p2: OpaqueRustPointer<Types.CSL_Address>, input_rptr p3: OpaqueRustPointer<Types.CSL_TransactionInput>, amount_rptr p4: OpaqueRustPointer<Types.CSL_Value>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        let c_p3 = p3.cPointer
        let c_p4 = p4.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_regular_input(c_p1, c_p2, c_p3, c_p4, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_inputs_from_and_change_with_collateral_return
    public static func transactionBuilderAddInputsFromAndChangeWithCollateralReturn(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, inputs_rptr p2: OpaqueRustPointer<Types.CSL_TransactionUnspentOutputs>, strategy_int p3: Int32, change_config_rptr p4: OpaqueRustPointer<Types.CSL_ChangeConfig>, collateral_percentage_rptr p5: OpaqueRustPointer<Types.CSL_BigNum>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        let c_p4 = p4.cPointer
        let c_p5 = p5.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_inputs_from_and_change_with_collateral_return(c_p1, c_p2, p3, c_p4, c_p5, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_get_native_input_scripts
    public static func transactionBuilderGetNativeInputScripts(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_get_native_input_scripts(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_get_plutus_input_scripts
    public static func transactionBuilderGetPlutusInputScripts(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_get_plutus_input_scripts(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_fee_for_input
    public static func transactionBuilderFeeForInput(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, address_rptr p2: OpaqueRustPointer<Types.CSL_Address>, input_rptr p3: OpaqueRustPointer<Types.CSL_TransactionInput>, amount_rptr p4: OpaqueRustPointer<Types.CSL_Value>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        let c_p3 = p3.cPointer
        let c_p4 = p4.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_fee_for_input(c_p1, c_p2, c_p3, c_p4, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_output
    public static func transactionBuilderAddOutput(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, output_rptr p2: OpaqueRustPointer<Types.CSL_TransactionOutput>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_output(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_fee_for_output
    public static func transactionBuilderFeeForOutput(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, output_rptr p2: OpaqueRustPointer<Types.CSL_TransactionOutput>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_fee_for_output(c_p1, c_p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_fee
    public static func transactionBuilderSetFee(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, fee_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_fee(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_min_fee
    public static func transactionBuilderSetMinFee(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, fee_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_min_fee(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_ttl
    public static func transactionBuilderSetTtl(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, ttl_long p2: Int64) throws -> Bool {
        let c_p1 = p1.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_ttl(c_p1, p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_ttl_bignum
    public static func transactionBuilderSetTtlBignum(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, ttl_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_ttl_bignum(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_remove_ttl
    public static func transactionBuilderRemoveTtl(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> Bool {
        let c_p1 = p1.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_remove_ttl(c_p1, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_validity_start_interval
    public static func transactionBuilderSetValidityStartInterval(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, validity_start_interval_long p2: Int64) throws -> Bool {
        let c_p1 = p1.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_validity_start_interval(c_p1, p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_validity_start_interval_bignum
    public static func transactionBuilderSetValidityStartIntervalBignum(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, validity_start_interval_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_validity_start_interval_bignum(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_remove_validity_start_interval
    public static func transactionBuilderRemoveValidityStartInterval(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> Bool {
        let c_p1 = p1.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_remove_validity_start_interval(c_p1, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_certs
    public static func transactionBuilderSetCerts(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, certs_rptr p2: OpaqueRustPointer<Types.CSL_Certificates>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_certs(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_remove_certs
    public static func transactionBuilderRemoveCerts(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> Bool {
        let c_p1 = p1.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_remove_certs(c_p1, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_certs_builder
    public static func transactionBuilderSetCertsBuilder(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, certs_rptr p2: OpaqueRustPointer<Types.CSL_CertificatesBuilder>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_certs_builder(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_withdrawals
    public static func transactionBuilderSetWithdrawals(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, withdrawals_rptr p2: OpaqueRustPointer<Types.CSL_Withdrawals>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_withdrawals(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_withdrawals_builder
    public static func transactionBuilderSetWithdrawalsBuilder(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, withdrawals_rptr p2: OpaqueRustPointer<Types.CSL_WithdrawalsBuilder>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_withdrawals_builder(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_voting_builder
    public static func transactionBuilderSetVotingBuilder(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, voting_builder_rptr p2: OpaqueRustPointer<Types.CSL_VotingBuilder>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_voting_builder(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_voting_proposal_builder
    public static func transactionBuilderSetVotingProposalBuilder(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, voting_proposal_builder_rptr p2: OpaqueRustPointer<Types.CSL_VotingProposalBuilder>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_voting_proposal_builder(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_remove_withdrawals
    public static func transactionBuilderRemoveWithdrawals(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> Bool {
        let c_p1 = p1.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_remove_withdrawals(c_p1, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_get_auxiliary_data
    public static func transactionBuilderGetAuxiliaryData(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_get_auxiliary_data(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_auxiliary_data
    public static func transactionBuilderSetAuxiliaryData(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, auxiliary_data_rptr p2: OpaqueRustPointer<Types.CSL_AuxiliaryData>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_auxiliary_data(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_remove_auxiliary_data
    public static func transactionBuilderRemoveAuxiliaryData(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> Bool {
        let c_p1 = p1.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_remove_auxiliary_data(c_p1, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_metadata
    public static func transactionBuilderSetMetadata(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, metadata_rptr p2: OpaqueRustPointer<Types.CSL_GeneralTransactionMetadata>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_metadata(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_metadatum
    public static func transactionBuilderAddMetadatum(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, key_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>, val_rptr p3: OpaqueRustPointer<Types.CSL_TransactionMetadatum>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        let c_p3 = p3.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_metadatum(c_p1, c_p2, c_p3, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_json_metadatum
    public static func transactionBuilderAddJsonMetadatum(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, key_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>, val_str p3: String) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_json_metadatum(c_p1, c_p2, p3, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_json_metadatum_with_schema
    public static func transactionBuilderAddJsonMetadatumWithSchema(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, key_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>, val_str p3: String, schema_int p4: Int32) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_json_metadatum_with_schema(c_p1, c_p2, p3, p4, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_mint_builder
    public static func transactionBuilderSetMintBuilder(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, mint_builder_rptr p2: OpaqueRustPointer<Types.CSL_MintBuilder>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_mint_builder(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_remove_mint_builder
    public static func transactionBuilderRemoveMintBuilder(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> Bool {
        let c_p1 = p1.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_remove_mint_builder(c_p1, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_get_mint_builder
    public static func transactionBuilderGetMintBuilder(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_get_mint_builder(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_mint
    public static func transactionBuilderSetMint(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, mint_rptr p2: OpaqueRustPointer<Types.CSL_Mint>, mint_scripts_rptr p3: OpaqueRustPointer<Types.CSL_NativeScripts>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        let c_p3 = p3.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_mint(c_p1, c_p2, c_p3, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_get_mint
    public static func transactionBuilderGetMint(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_get_mint(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_get_mint_scripts
    public static func transactionBuilderGetMintScripts(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_get_mint_scripts(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_mint_asset
    public static func transactionBuilderSetMintAsset(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, policy_script_rptr p2: OpaqueRustPointer<Types.CSL_NativeScript>, mint_assets_rptr p3: OpaqueRustPointer<Types.CSL_MintAssets>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        let c_p3 = p3.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_mint_asset(c_p1, c_p2, c_p3, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_mint_asset
    public static func transactionBuilderAddMintAsset(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, policy_script_rptr p2: OpaqueRustPointer<Types.CSL_NativeScript>, asset_name_rptr p3: OpaqueRustPointer<Types.CSL_AssetName>, amount_rptr p4: OpaqueRustPointer<Types.CSL_Int>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        let c_p3 = p3.cPointer
        let c_p4 = p4.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_mint_asset(c_p1, c_p2, c_p3, c_p4, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_mint_asset_and_output
    public static func transactionBuilderAddMintAssetAndOutput(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, policy_script_rptr p2: OpaqueRustPointer<Types.CSL_NativeScript>, asset_name_rptr p3: OpaqueRustPointer<Types.CSL_AssetName>, amount_rptr p4: OpaqueRustPointer<Types.CSL_Int>, output_builder_rptr p5: OpaqueRustPointer<Types.CSL_TransactionOutputAmountBuilder>, output_coin_rptr p6: OpaqueRustPointer<Types.CSL_BigNum>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        let c_p3 = p3.cPointer
        let c_p4 = p4.cPointer
        let c_p5 = p5.cPointer
        let c_p6 = p6.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_mint_asset_and_output(c_p1, c_p2, c_p3, c_p4, c_p5, c_p6, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_mint_asset_and_output_min_required_coin
    public static func transactionBuilderAddMintAssetAndOutputMinRequiredCoin(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, policy_script_rptr p2: OpaqueRustPointer<Types.CSL_NativeScript>, asset_name_rptr p3: OpaqueRustPointer<Types.CSL_AssetName>, amount_rptr p4: OpaqueRustPointer<Types.CSL_Int>, output_builder_rptr p5: OpaqueRustPointer<Types.CSL_TransactionOutputAmountBuilder>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        let c_p3 = p3.cPointer
        let c_p4 = p4.cPointer
        let c_p5 = p5.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_mint_asset_and_output_min_required_coin(c_p1, c_p2, c_p3, c_p4, c_p5, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_extra_witness_datum
    public static func transactionBuilderAddExtraWitnessDatum(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, datum_rptr p2: OpaqueRustPointer<Types.CSL_PlutusData>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_extra_witness_datum(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_get_extra_witness_datums
    public static func transactionBuilderGetExtraWitnessDatums(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_get_extra_witness_datums(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_donation
    public static func transactionBuilderSetDonation(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, donation_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_donation(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_get_donation
    public static func transactionBuilderGetDonation(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_get_donation(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_current_treasury_value
    public static func transactionBuilderSetCurrentTreasuryValue(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, current_treasury_value_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_current_treasury_value(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_get_current_treasury_value
    public static func transactionBuilderGetCurrentTreasuryValue(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_get_current_treasury_value(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_get_reference_inputs
    public static func transactionBuilderGetReferenceInputs(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_get_reference_inputs(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_get_explicit_input
    public static func transactionBuilderGetExplicitInput(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_get_explicit_input(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_get_implicit_input
    public static func transactionBuilderGetImplicitInput(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_get_implicit_input(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_get_total_input
    public static func transactionBuilderGetTotalInput(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_get_total_input(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_get_total_output
    public static func transactionBuilderGetTotalOutput(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_get_total_output(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_get_explicit_output
    public static func transactionBuilderGetExplicitOutput(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_get_explicit_output(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_get_deposit
    public static func transactionBuilderGetDeposit(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_get_deposit(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_get_fee_if_set
    public static func transactionBuilderGetFeeIfSet(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_get_fee_if_set(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_calc_script_data_hash
    public static func transactionBuilderCalcScriptDataHash(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, cost_models_rptr p2: OpaqueRustPointer<Types.CSL_Costmdls>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_calc_script_data_hash(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_set_script_data_hash
    public static func transactionBuilderSetScriptDataHash(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, hash_rptr p2: OpaqueRustPointer<Types.CSL_ScriptDataHash>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_set_script_data_hash(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_remove_script_data_hash
    public static func transactionBuilderRemoveScriptDataHash(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> Bool {
        let c_p1 = p1.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_remove_script_data_hash(c_p1, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_add_required_signer
    public static func transactionBuilderAddRequiredSigner(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, key_rptr p2: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>) throws -> Bool {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_add_required_signer(c_p1, c_p2, &error)
        if success {
            return success
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_build
    public static func transactionBuilderBuild(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_build(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_build_tx
    public static func transactionBuilderBuildTx(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_build_tx(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_build_tx_unsafe
    public static func transactionBuilderBuildTxUnsafe(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_build_tx_unsafe(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_min_fee
    public static func transactionBuilderMinFee(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_min_fee(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_config_builder_fee_algo
    public static func transactionBuilderConfigBuilderFeeAlgo(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder>, fee_algo_rptr p2: OpaqueRustPointer<Types.CSL_LinearFee>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder> {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_config_builder_fee_algo(c_p1, c_p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_config_builder_coins_per_utxo_byte
    public static func transactionBuilderConfigBuilderCoinsPerUtxoByte(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder>, coins_per_utxo_byte_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder> {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_config_builder_coins_per_utxo_byte(c_p1, c_p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_config_builder_ex_unit_prices
    public static func transactionBuilderConfigBuilderExUnitPrices(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder>, ex_unit_prices_rptr p2: OpaqueRustPointer<Types.CSL_ExUnitPrices>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder> {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_config_builder_ex_unit_prices(c_p1, c_p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_config_builder_pool_deposit
    public static func transactionBuilderConfigBuilderPoolDeposit(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder>, pool_deposit_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder> {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_config_builder_pool_deposit(c_p1, c_p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_config_builder_key_deposit
    public static func transactionBuilderConfigBuilderKeyDeposit(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder>, key_deposit_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder> {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_config_builder_key_deposit(c_p1, c_p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_config_builder_max_value_size
    public static func transactionBuilderConfigBuilderMaxValueSize(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder>, max_value_size_long p2: Int64) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_config_builder_max_value_size(c_p1, p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_config_builder_max_tx_size
    public static func transactionBuilderConfigBuilderMaxTxSize(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder>, max_tx_size_long p2: Int64) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_config_builder_max_tx_size(c_p1, p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_config_builder_ref_script_coins_per_byte
    public static func transactionBuilderConfigBuilderRefScriptCoinsPerByte(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder>, ref_script_coins_per_byte_rptr p2: OpaqueRustPointer<Types.CSL_UnitInterval>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder> {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_config_builder_ref_script_coins_per_byte(c_p1, c_p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_config_builder_prefer_pure_change
    public static func transactionBuilderConfigBuilderPreferPureChange(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder>, prefer_pure_change p2: Bool) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_config_builder_prefer_pure_change(c_p1, p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_config_builder_deduplicate_explicit_ref_inputs_with_regular_inputs
    public static func transactionBuilderConfigBuilderDeduplicateExplicitRefInputsWithRegularInputs(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder>, deduplicate_explicit_ref_inputs_with_regular_inputs p2: Bool) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_config_builder_deduplicate_explicit_ref_inputs_with_regular_inputs(c_p1, p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_config_builder_do_not_burn_extra_change
    public static func transactionBuilderConfigBuilderDoNotBurnExtraChange(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder>, do_not_burn_extra_change p2: Bool) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_config_builder_do_not_burn_extra_change(c_p1, p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    
    
    // Swift Wrapper call to csl_bridge_transaction_builder_config_builder_build
    public static func transactionBuilderConfigBuilderBuild(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilderConfigBuilder>) throws -> OpaqueRustPointer<Types.CSL_TransactionBuilderConfig> {
        let c_p1 = p1.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_transaction_builder_config_builder_build(c_p1, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }
    

    // Swift Wrapper call to csl_bridge_fixed_transaction_sign_and_add_vkey_signature
    public static func fixedTransactionSignAndAddVkeySignature(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTransaction>, key_rptr p2: OpaqueRustPointer<Types.CSL_PrivateKey>) throws {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        var error: CharPtr? = nil
        let success = csl_bridge_fixed_transaction_sign_and_add_vkey_signature(c_p1, c_p2, &error)
        if success {
            return
        } else {
            throw createError(from: error)
        }
    }

    // Swift Wrapper call to csl_bridge_cip30_vkey_witness
    public static func cip30VkeyWitness(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTransaction>, other_rptr p2: OpaqueRustPointer<Types.CSL_FixedTransaction>) throws -> OpaqueRustPointer<Types.CSL_Vkeywitnesses> {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        var result  = RPtr(_0: nil)
        var error: CharPtr? = nil
        let success = csl_bridge_cip30_vkey_witness(c_p1, c_p2, &result, &error)
        if success {
            return OpaqueRustPointer(cPointer: result)
        } else {
            throw createError(from: error)
        }
    }


    // Swift wrapper call to csl_bridge_fixed_transaction_get_all_signers
    public static func fixedTransactionGetAllSigners(self_rptr p1: OpaqueRustPointer<Types.CSL_FixedTransaction>, inputs_rptr p2: OpaqueRustPointer<Types.CSL_TransactionUnspentOutputs>) throws -> [Data] {
        let c_p1 = p1.cPointer
        let c_p2 = p2.cPointer
        var result  = DataPtrArray()
        var error: CharPtr? = nil
        let success = csl_bridge_fixed_transaction_get_all_signers(c_p1, c_p2, &result, &error)
        if success {
            return NSData.fromDataPtrArray(&result)
        } else {
            throw createError(from: error)
        }
    }



}
