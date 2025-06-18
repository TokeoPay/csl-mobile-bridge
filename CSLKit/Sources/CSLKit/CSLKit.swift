import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension Data {
    init(dataPtr: DataPtr) {
        self = Data(bytes: dataPtr.ptr, count: Int(dataPtr.len))
    }
}
extension DataPtr {
    init(fromData data: Data) throws {
        self.init()
        data.withUnsafeBytes { bytes in
            self.ptr = bytes.bindMemory(to: UInt8.self).baseAddress
            self.len = UInt(data.count)
        }
    }
}


public class CSLKit {

    public class Types {
        // MARK: - Type Definitions
        public enum CSL_Address {}
        public enum CSL_StakePoolKeyHash {}
        public enum CSL_Anchor {}
        public enum CSL_LinearFee {}
        public enum CSL_DataCost {}
        public enum CSL_AnchorDataHash {}
        public enum CSL_AssetName {}
        public enum CSL_AssetNames {}
        public enum CSL_Assets {}
        public enum CSL_AuxiliaryData {}
        public enum CSL_AuxiliaryDataHash {}
        public enum CSL_AuxiliaryDataSet {}
        public enum CSL_BaseAddress {}
        public enum CSL_BigInt {}
        public enum CSL_BigNum {}
        public enum CSL_Bip32PrivateKey {}
        public enum CSL_Bip32PublicKey {}
        public enum CSL_Block {}
        public enum CSL_BlockHash {}
        public enum CSL_BootstrapWitness {}
        public enum CSL_BootstrapWitnesses {}
        public enum CSL_ByronAddress {}
        public enum CSL_cardano_serialization_lib {}
        public enum CSL_Certificate {}
        public enum CSL_Certificates {}
        public enum CSL_CertificatesBuilder {}
        public enum CSL_Committee {}
        public enum CSL_CommitteeColdResign {}
        public enum CSL_CommitteeHotAuth {}
        public enum CSL_Constitution {}
        public enum CSL_ConstrPlutusData {}
        public enum CSL_Costmdls {}
        public enum CSL_CostModel {}
        public enum CSL_Credential {}
        public enum CSL_Credentials {}
        public enum CSL_DataHash {}
        public enum CSL_DNSRecordAorAAAA {}
        public enum CSL_DNSRecordSRV {}
        public enum CSL_DRep {}
        public enum CSL_DRepDeregistration {}
        public enum CSL_DRepRegistration {}
        public enum CSL_DRepUpdate {}
        public enum CSL_DRepVotingThresholds {}
        public enum CSL_Ed25519KeyHash {}
        public enum CSL_Ed25519KeyHashes {}
        public enum CSL_Ed25519Signature {}
        public enum CSL_EnterpriseAddress {}
        public enum CSL_ExUnitPrices {}
        public enum CSL_ExUnits {}
        public enum CSL_FixedBlock {}
        public enum CSL_FixedTransaction {}
        public enum CSL_FixedTransactionBodies {}
        public enum CSL_FixedTransactionBody {}
        public enum CSL_FixedTxWitnessesSet {}
        public enum CSL_FixedVersionedBlock {}
        public enum CSL_GeneralTransactionMetadata {}
        public enum CSL_GenesisDelegateHash {}
        public enum CSL_GenesisHash {}
        public enum CSL_GenesisHashes {}
        public enum CSL_GenesisKeyDelegation {}
        public enum CSL_GovernanceAction {}
        public enum CSL_GovernanceActionId {}
        public enum CSL_GovernanceActionIds {}
        public enum CSL_HardForkInitiationAction {}
        public enum CSL_Header {}
        public enum CSL_HeaderBody {}
        public enum CSL_InfoAction {}
        public enum CSL_Int {}
        public enum CSL_Ipv4 {}
        public enum CSL_Ipv6 {}
        public enum CSL_KESSignature {}
        public enum CSL_KESVKey {}
        public enum CSL_Language {}
        public enum CSL_Languages {}
        public enum CSL_LegacyDaedalusPrivateKey {}
        public enum CSL_MalformedAddress {}
        public enum CSL_MetadataList {}
        public enum CSL_MetadataMap {}
        public enum CSL_Mint {}
        public enum CSL_MintAssets {}
        public enum CSL_MintBuilder {}
        public enum CSL_MintsAssets {}
        public enum CSL_MIRToStakeCredentials {}
        public enum CSL_MoveInstantaneousReward {}
        public enum CSL_MoveInstantaneousRewardsCert {}
        public enum CSL_MultiAsset {}
        public enum CSL_MultiHostName {}
        public enum CSL_NativeScript {}
        public enum CSL_NativeScripts {}
        public enum CSL_NativeScriptSource {}
        public enum CSL_NetworkId {}
        public enum CSL_NetworkInfo {}
        public enum CSL_NewConstitutionAction {}
        public enum CSL_NoConfidenceAction {}
        public enum CSL_Nonce {}
        public enum CSL_None {} // This is like Unknown
        public enum CSL_OperationalCert {}
        public enum CSL_ParameterChangeAction {}
        public enum CSL_PlutusData {}
        public enum CSL_PlutusList {}
        public enum CSL_PlutusMap {}
        public enum CSL_PlutusMapValues {}
        public enum CSL_PlutusScript {}
        public enum CSL_PlutusScripts {}
        public enum CSL_PlutusScriptSource {}
        public enum CSL_PlutusWitnesses {}
        public enum CSL_Pointer {}
        public enum CSL_PointerAddress {}
        public enum CSL_PoolMetadata {}
        public enum CSL_PoolMetadataHash {}
        public enum CSL_PoolParams {}
        public enum CSL_PoolRegistration {}
        public enum CSL_PoolRetirement {}
        public enum CSL_PoolVotingThresholds {}
        public enum CSL_PrivateKey {}
        public enum CSL_ProposedProtocolParameterUpdates {}
        public enum CSL_ProtocolParamUpdate {}
        public enum CSL_ProtocolVersion {}
        public enum CSL_PublicKey {}
        public enum CSL_PublicKeys {}
        public enum CSL_Redeemer {}
        public enum CSL_Redeemers {}
        public enum CSL_RedeemerTag {}
        public enum CSL_Relay {}
        public enum CSL_Relays {}
        public enum CSL_RewardAddress {}
        public enum CSL_RewardAddresses {}
        public enum CSL_ScriptAll {}
        public enum CSL_ScriptAny {}
        public enum CSL_ScriptDataHash {}
        public enum CSL_ScriptHash {}
        public enum CSL_ScriptHashes {}
        public enum CSL_ScriptNOfK {}
        public enum CSL_ScriptPubkey {}
        public enum CSL_ScriptRef {}
        public enum CSL_SingleHostAddr {}
        public enum CSL_SingleHostName {}
        public enum CSL_ChangeConfig {}
        public enum CSL_OutputDatum {}
        public enum CSL_StakeAndVoteDelegation {}
        public enum CSL_StakeDelegation {}
        public enum CSL_StakeDeregistration {}
        public enum CSL_StakeRegistration {}
        public enum CSL_StakeRegistrationAndDelegation {}
        public enum CSL_StakeVoteRegistrationAndDelegation {}
        public enum CSL_Strings {}
        public enum CSL_TimelockExpiry {}
        public enum CSL_TimelockStart {}
        public enum CSL_Transaction {}
        public enum CSL_TransactionBatch {}
        public enum CSL_TransactionBatchList {}
        public enum CSL_TransactionBodies {}
        public enum CSL_TransactionBody {}
        public enum CSL_TransactionBuilder {}
        public enum CSL_TransactionBuilderConfig {}
        public enum CSL_TransactionHash {}
        public enum CSL_TransactionInput {}
        public enum CSL_TransactionInputs {}
        public enum CSL_TransactionMetadatum {}
        public enum CSL_TransactionMetadatumLabels {}
        public enum CSL_TransactionOutput {}
        public enum CSL_TransactionOutputAmountBuilder {}
        public enum CSL_TransactionOutputBuilder {}
        public enum CSL_TransactionOutputs {}
        public enum CSL_TransactionUnspentOutput {}
        public enum CSL_TransactionUnspentOutputs {}
        public enum CSL_TransactionWitnessSet {}
        public enum CSL_TransactionWitnessSets {}
        public enum CSL_TreasuryWithdrawals {}
        public enum CSL_TreasuryWithdrawalsAction {}
        public enum CSL_TxInputsBuilder {}
        public enum CSL_UnitInterval {}
        public enum CSL_Update {}
        public enum CSL_UpdateCommitteeAction {}
        public enum CSL_URL {}
        public enum CSL_Value {}
        public enum CSL_VersionedBlock {}
        public enum CSL_Vkey {}
        public enum CSL_Vkeys {}
        public enum CSL_Vkeywitness {}
        public enum CSL_Vkeywitnesses {}
        public enum CSL_VoteDelegation {}
        public enum CSL_Voter {}
        public enum CSL_VoteRegistrationAndDelegation {}
        public enum CSL_Voters {}
        public enum CSL_VotingBuilder {}
        public enum CSL_VotingProcedure {}
        public enum CSL_VotingProcedures {}
        public enum CSL_VotingProposal {}
        public enum CSL_VotingProposalBuilder {}
        public enum CSL_VotingProposals {}
        public enum CSL_VRFCert {}
        public enum CSL_VRFKeyHash {}
        public enum CSL_VRFVKey {}
        public enum CSL_Withdrawals {}
        public enum CSL_WithdrawalsBuilder {}
        public enum CSL_RawKey {}
        public enum CSL_KeyHash {}
        public enum CSL_PaymentCred {}
        public enum CSL_Bool {}
        public enum CSL_DatumSource {}
        public enum CSL_String {}
        public enum CSL_Unknown {}
        // MARK: - End Type Definitions
    }
    
    internal static func createError(from errorPtr: CharPtr?, code: Int = 1) -> Error {
        if let errorPtr = errorPtr {
            let errorString = String(cString: errorPtr)
            // Free errorPtr if required by your C API
            return NSError(
                domain: "CSLKit",
                code: code,
                userInfo: [NSLocalizedDescriptionKey: errorString]
            )
        } else {
            return NSError(
                domain: "CSLKit",
                code: 2,
                userInfo: [NSLocalizedDescriptionKey: "Unknown error"]
            )
        }
        
    }
    
}
