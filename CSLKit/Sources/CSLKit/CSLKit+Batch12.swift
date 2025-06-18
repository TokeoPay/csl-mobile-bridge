import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension CSLKit {
// Swift Wrapper call to csl_bridge_stake_delegation_from_hex
        public static func stakeDelegationFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_StakeDelegation> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_delegation_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_delegation_to_json
        public static func stakeDelegationToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeDelegation>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_stake_delegation_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_delegation_from_json
        public static func stakeDelegationFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_StakeDelegation> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_delegation_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_delegation_new
        public static func stakeDelegationNew(stake_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>, pool_keyhash_rptr p2: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_delegation_new(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_delegation_has_script_credentials
        public static func stakeDelegationHasScriptCredentials(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeDelegation>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_stake_delegation_has_script_credentials(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_deregistration_to_bytes
        public static func stakeDeregistrationToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeDeregistration>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_stake_deregistration_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_deregistration_from_bytes
        public static func stakeDeregistrationFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_StakeDeregistration> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_deregistration_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_deregistration_to_hex
        public static func stakeDeregistrationToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeDeregistration>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_stake_deregistration_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_deregistration_from_hex
        public static func stakeDeregistrationFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_StakeDeregistration> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_deregistration_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_deregistration_to_json
        public static func stakeDeregistrationToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeDeregistration>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_stake_deregistration_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_deregistration_from_json
        public static func stakeDeregistrationFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_StakeDeregistration> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_deregistration_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_deregistration_new
        public static func stakeDeregistrationNew(stake_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_deregistration_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_deregistration_new_with_explicit_refund
        public static func stakeDeregistrationNewWithExplicitRefund(stake_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>, coin_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_deregistration_new_with_explicit_refund(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_deregistration_has_script_credentials
        public static func stakeDeregistrationHasScriptCredentials(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeDeregistration>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_stake_deregistration_has_script_credentials(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_registration_to_bytes
        public static func stakeRegistrationToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeRegistration>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_stake_registration_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_registration_from_bytes
        public static func stakeRegistrationFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_StakeRegistration> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_registration_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_registration_to_hex
        public static func stakeRegistrationToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeRegistration>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_stake_registration_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_registration_from_hex
        public static func stakeRegistrationFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_StakeRegistration> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_registration_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_registration_to_json
        public static func stakeRegistrationToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeRegistration>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_stake_registration_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_registration_from_json
        public static func stakeRegistrationFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_StakeRegistration> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_registration_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_registration_new
        public static func stakeRegistrationNew(stake_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_registration_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_registration_new_with_explicit_deposit
        public static func stakeRegistrationNewWithExplicitDeposit(stake_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>, coin_rptr p2: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_registration_new_with_explicit_deposit(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_registration_has_script_credentials
        public static func stakeRegistrationHasScriptCredentials(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeRegistration>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_stake_registration_has_script_credentials(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_registration_and_delegation_to_bytes
        public static func stakeRegistrationAndDelegationToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeRegistrationAndDelegation>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_stake_registration_and_delegation_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_registration_and_delegation_from_bytes
        public static func stakeRegistrationAndDelegationFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_StakeRegistrationAndDelegation> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_registration_and_delegation_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_registration_and_delegation_to_hex
        public static func stakeRegistrationAndDelegationToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeRegistrationAndDelegation>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_stake_registration_and_delegation_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_registration_and_delegation_from_hex
        public static func stakeRegistrationAndDelegationFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_StakeRegistrationAndDelegation> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_registration_and_delegation_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_registration_and_delegation_to_json
        public static func stakeRegistrationAndDelegationToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeRegistrationAndDelegation>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_stake_registration_and_delegation_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_registration_and_delegation_from_json
        public static func stakeRegistrationAndDelegationFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_StakeRegistrationAndDelegation> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_registration_and_delegation_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_registration_and_delegation_new
        public static func stakeRegistrationAndDelegationNew(stake_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>, pool_keyhash_rptr p2: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>, coin_rptr p3: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_registration_and_delegation_new(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_registration_and_delegation_has_script_credentials
        public static func stakeRegistrationAndDelegationHasScriptCredentials(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeRegistrationAndDelegation>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_stake_registration_and_delegation_has_script_credentials(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_vote_registration_and_delegation_to_bytes
        public static func stakeVoteRegistrationAndDelegationToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeVoteRegistrationAndDelegation>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_stake_vote_registration_and_delegation_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_vote_registration_and_delegation_from_bytes
        public static func stakeVoteRegistrationAndDelegationFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_StakeVoteRegistrationAndDelegation> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_vote_registration_and_delegation_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_vote_registration_and_delegation_to_hex
        public static func stakeVoteRegistrationAndDelegationToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeVoteRegistrationAndDelegation>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_stake_vote_registration_and_delegation_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_vote_registration_and_delegation_from_hex
        public static func stakeVoteRegistrationAndDelegationFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_StakeVoteRegistrationAndDelegation> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_vote_registration_and_delegation_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_vote_registration_and_delegation_to_json
        public static func stakeVoteRegistrationAndDelegationToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeVoteRegistrationAndDelegation>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_stake_vote_registration_and_delegation_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_vote_registration_and_delegation_from_json
        public static func stakeVoteRegistrationAndDelegationFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_StakeVoteRegistrationAndDelegation> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_vote_registration_and_delegation_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_vote_registration_and_delegation_new
        public static func stakeVoteRegistrationAndDelegationNew(stake_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>, pool_keyhash_rptr p2: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>, drep_rptr p3: OpaqueRustPointer<Types.CSL_DRep>, coin_rptr p4: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            let c_p4 = p4.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_stake_vote_registration_and_delegation_new(c_p1, c_p2, c_p3, c_p4, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_stake_vote_registration_and_delegation_has_script_credentials
        public static func stakeVoteRegistrationAndDelegationHasScriptCredentials(self_rptr p1: OpaqueRustPointer<Types.CSL_StakeVoteRegistrationAndDelegation>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_stake_vote_registration_and_delegation_has_script_credentials(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_strings_new
        public static func stringsNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_strings_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_strings_len
        public static func stringsLen(self_rptr p1: OpaqueRustPointer<Types.CSL_Strings>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_strings_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_strings_get
        public static func stringsGet(self_rptr p1: OpaqueRustPointer<Types.CSL_Strings>, index_long p2: Int64) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_strings_get(c_p1, p2, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_expiry_to_bytes
        public static func timelockExpiryToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_TimelockExpiry>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_expiry_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_expiry_from_bytes
        public static func timelockExpiryFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_TimelockExpiry> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_expiry_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_expiry_to_hex
        public static func timelockExpiryToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_TimelockExpiry>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_expiry_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_expiry_from_hex
        public static func timelockExpiryFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TimelockExpiry> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_expiry_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_expiry_to_json
        public static func timelockExpiryToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_TimelockExpiry>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_expiry_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_expiry_from_json
        public static func timelockExpiryFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TimelockExpiry> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_expiry_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_expiry_slot
        public static func timelockExpirySlot(self_rptr p1: OpaqueRustPointer<Types.CSL_TimelockExpiry>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_expiry_slot(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_expiry_new
        public static func timelockExpiryNew(slot_long p1: Int64) throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_expiry_new(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_expiry_new_timelockexpiry
        public static func timelockExpiryNewTimelockexpiry(slot_rptr p1: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_expiry_new_timelockexpiry(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_start_to_bytes
        public static func timelockStartToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_TimelockStart>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_start_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_start_from_bytes
        public static func timelockStartFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_TimelockStart> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_start_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_start_to_hex
        public static func timelockStartToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_TimelockStart>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_start_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_start_from_hex
        public static func timelockStartFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TimelockStart> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_start_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_start_to_json
        public static func timelockStartToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_TimelockStart>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_start_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_start_from_json
        public static func timelockStartFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TimelockStart> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_start_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_start_slot
        public static func timelockStartSlot(self_rptr p1: OpaqueRustPointer<Types.CSL_TimelockStart>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_start_slot(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_start_new
        public static func timelockStartNew(slot_long p1: Int64) throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_start_new(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_timelock_start_new_timelockstart
        public static func timelockStartNewTimelockstart(slot_rptr p1: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_timelock_start_new_timelockstart(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_to_bytes
        public static func transactionToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Transaction>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_from_bytes
        public static func transactionFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Transaction> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_to_hex
        public static func transactionToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Transaction>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_from_hex
        public static func transactionFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Transaction> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_to_json
        public static func transactionToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Transaction>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_from_json
        public static func transactionFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Transaction> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_witness_set
        public static func transactionWitnessSet(self_rptr p1: OpaqueRustPointer<Types.CSL_Transaction>) throws -> OpaqueRustPointer<Types.CSL_TransactionWitnessSet> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_witness_set(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_is_valid
        public static func transactionIsValid(self_rptr p1: OpaqueRustPointer<Types.CSL_Transaction>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_is_valid(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_new
        public static func transactionNew(body_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBody>, witness_set_rptr p2: OpaqueRustPointer<Types.CSL_TransactionWitnessSet>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_new(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_new_with_auxiliary_data
        public static func transactionNewWithAuxiliaryData(body_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBody>, witness_set_rptr p2: OpaqueRustPointer<Types.CSL_TransactionWitnessSet>, auxiliary_data_rptr p3: OpaqueRustPointer<Types.CSL_AuxiliaryData>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_new_with_auxiliary_data(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_batch_len
        public static func transactionBatchLen(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBatch>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_batch_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_batch_list_len
        public static func transactionBatchListLen(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBatchList>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_batch_list_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_bodies_to_bytes
        public static func transactionBodiesToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBodies>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_bodies_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_bodies_from_bytes
        public static func transactionBodiesFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_TransactionBodies> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_bodies_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_bodies_to_hex
        public static func transactionBodiesToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBodies>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_bodies_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_bodies_from_hex
        public static func transactionBodiesFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionBodies> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_bodies_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_bodies_to_json
        public static func transactionBodiesToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBodies>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_bodies_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_bodies_from_json
        public static func transactionBodiesFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionBodies> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_bodies_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_bodies_new
        public static func transactionBodiesNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_bodies_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_bodies_len
        public static func transactionBodiesLen(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBodies>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_bodies_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_to_bytes
        public static func transactionBodyToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBody>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_from_bytes
        public static func transactionBodyFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_TransactionBody> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_to_hex
        public static func transactionBodyToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBody>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_from_hex
        public static func transactionBodyFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionBody> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_to_json
        public static func transactionBodyToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBody>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_from_json
        public static func transactionBodyFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_TransactionBody> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_ttl
        public static func transactionBodyTtl(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBody>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_ttl(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_ttl_bignum
        public static func transactionBodyTtlBignum(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBody>) throws -> OpaqueRustPointer<Types.CSL_BigNum> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_ttl_bignum(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_withdrawals
        public static func transactionBodyWithdrawals(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBody>) throws -> OpaqueRustPointer<Types.CSL_TreasuryWithdrawals> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_withdrawals(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_update
        public static func transactionBodyUpdate(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBody>) throws -> OpaqueRustPointer<Types.CSL_Update> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_update(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_validity_start_interval_bignum
        public static func transactionBodyValidityStartIntervalBignum(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBody>) throws -> OpaqueRustPointer<Types.CSL_BigNum> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_validity_start_interval_bignum(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_validity_start_interval
        public static func transactionBodyValidityStartInterval(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBody>) throws -> Int64? {
            let c_p1 = p1.cPointer
            var result: Int64 = 0
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_validity_start_interval(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_total_collateral
        public static func transactionBodyTotalCollateral(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBody>) throws -> OpaqueRustPointer<Types.CSL_BigNum> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_total_collateral(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_voting_procedures
        public static func transactionBodyVotingProcedures(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBody>) throws -> OpaqueRustPointer<Types.CSL_VotingProcedures> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_voting_procedures(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_voting_proposals
        public static func transactionBodyVotingProposals(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBody>) throws -> OpaqueRustPointer<Types.CSL_VotingProposals> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_voting_proposals(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_new
        public static func transactionBodyNew(inputs_rptr p1: OpaqueRustPointer<Types.CSL_TransactionInputs>, outputs_rptr p2: OpaqueRustPointer<Types.CSL_TransactionOutputs>, fee_rptr p3: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_new(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_new_with_ttl
        public static func transactionBodyNewWithTtl(inputs_rptr p1: OpaqueRustPointer<Types.CSL_TransactionInputs>, outputs_rptr p2: OpaqueRustPointer<Types.CSL_TransactionOutputs>, fee_rptr p3: OpaqueRustPointer<Types.CSL_BigNum>, ttl_long p4: Int64) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_new_with_ttl(c_p1, c_p2, c_p3, p4, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_body_new_tx_body
        public static func transactionBodyNewTxBody(inputs_rptr p1: OpaqueRustPointer<Types.CSL_TransactionInputs>, outputs_rptr p2: OpaqueRustPointer<Types.CSL_TransactionOutputs>, fee_rptr p3: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_body_new_tx_body(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_builder_add_inputs_from_and_change
        public static func transactionBuilderAddInputsFromAndChange(self_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilder>, inputs_rptr p2: OpaqueRustPointer<Types.CSL_TransactionUnspentOutputs>, strategy_int p3: Int32, change_config_rptr p4: OpaqueRustPointer<Types.CSL_ChangeConfig>) throws -> Bool {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p4 = p4.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_builder_add_inputs_from_and_change(c_p1, c_p2, p3, c_p4, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_transaction_builder_new
        public static func transactionBuilderNew(cfg_rptr p1: OpaqueRustPointer<Types.CSL_TransactionBuilderConfig>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_transaction_builder_new(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
}
