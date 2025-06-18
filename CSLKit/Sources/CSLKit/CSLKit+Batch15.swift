import Foundation
import react_native_haskell_shelley
import CSLKitObjC

extension CSLKit {
// Swift Wrapper call to csl_bridge_vkeys_len
        public static func vkeysLen(self_rptr p1: OpaqueRustPointer<Types.CSL_Vkeys>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_vkeys_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeywitness_to_bytes
        public static func vkeywitnessToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Vkeywitness>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_vkeywitness_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeywitness_from_bytes
        public static func vkeywitnessFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Vkeywitness> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vkeywitness_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeywitness_to_hex
        public static func vkeywitnessToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Vkeywitness>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_vkeywitness_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeywitness_from_hex
        public static func vkeywitnessFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Vkeywitness> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vkeywitness_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeywitness_to_json
        public static func vkeywitnessToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Vkeywitness>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_vkeywitness_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeywitness_from_json
        public static func vkeywitnessFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Vkeywitness> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vkeywitness_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeywitness_new
        public static func vkeywitnessNew(vkey_rptr p1: OpaqueRustPointer<Types.CSL_Vkey>, signature_rptr p2: OpaqueRustPointer<Types.CSL_Ed25519Signature>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vkeywitness_new(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeywitness_vkey
        public static func vkeywitnessVkey(self_rptr p1: OpaqueRustPointer<Types.CSL_Vkeywitness>) throws -> OpaqueRustPointer<Types.CSL_Vkey> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vkeywitness_vkey(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeywitnesses_to_bytes
        public static func vkeywitnessesToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Vkeywitnesses>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_vkeywitnesses_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeywitnesses_from_bytes
        public static func vkeywitnessesFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Vkeywitnesses> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vkeywitnesses_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeywitnesses_to_hex
        public static func vkeywitnessesToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Vkeywitnesses>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_vkeywitnesses_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeywitnesses_from_hex
        public static func vkeywitnessesFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Vkeywitnesses> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vkeywitnesses_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeywitnesses_to_json
        public static func vkeywitnessesToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Vkeywitnesses>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_vkeywitnesses_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeywitnesses_from_json
        public static func vkeywitnessesFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Vkeywitnesses> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vkeywitnesses_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeywitnesses_new
        public static func vkeywitnessesNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vkeywitnesses_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeywitnesses_len
        public static func vkeywitnessesLen(self_rptr p1: OpaqueRustPointer<Types.CSL_Vkeywitnesses>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_vkeywitnesses_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vkeywitnesses_add
        public static func vkeywitnessesAdd(self_rptr p1: OpaqueRustPointer<Types.CSL_Vkeywitnesses>, witness_rptr p2: OpaqueRustPointer<Types.CSL_Vkeywitness>) throws -> Bool {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_vkeywitnesses_add(c_p1, c_p2, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vote_delegation_to_bytes
        public static func voteDelegationToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_VoteDelegation>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_vote_delegation_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vote_delegation_from_bytes
        public static func voteDelegationFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_VoteDelegation> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vote_delegation_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vote_delegation_to_hex
        public static func voteDelegationToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_VoteDelegation>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_vote_delegation_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vote_delegation_from_hex
        public static func voteDelegationFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VoteDelegation> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vote_delegation_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vote_delegation_to_json
        public static func voteDelegationToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_VoteDelegation>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_vote_delegation_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vote_delegation_from_json
        public static func voteDelegationFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VoteDelegation> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vote_delegation_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vote_delegation_new
        public static func voteDelegationNew(stake_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>, drep_rptr p2: OpaqueRustPointer<Types.CSL_DRep>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vote_delegation_new(c_p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vote_delegation_has_script_credentials
        public static func voteDelegationHasScriptCredentials(self_rptr p1: OpaqueRustPointer<Types.CSL_VoteDelegation>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_vote_delegation_has_script_credentials(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vote_registration_and_delegation_to_bytes
        public static func voteRegistrationAndDelegationToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_VoteRegistrationAndDelegation>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_vote_registration_and_delegation_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vote_registration_and_delegation_from_bytes
        public static func voteRegistrationAndDelegationFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_VoteRegistrationAndDelegation> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vote_registration_and_delegation_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vote_registration_and_delegation_to_hex
        public static func voteRegistrationAndDelegationToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_VoteRegistrationAndDelegation>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_vote_registration_and_delegation_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vote_registration_and_delegation_from_hex
        public static func voteRegistrationAndDelegationFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VoteRegistrationAndDelegation> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vote_registration_and_delegation_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vote_registration_and_delegation_to_json
        public static func voteRegistrationAndDelegationToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_VoteRegistrationAndDelegation>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_vote_registration_and_delegation_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vote_registration_and_delegation_from_json
        public static func voteRegistrationAndDelegationFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VoteRegistrationAndDelegation> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vote_registration_and_delegation_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vote_registration_and_delegation_new
        public static func voteRegistrationAndDelegationNew(stake_credential_rptr p1: OpaqueRustPointer<Types.CSL_Credential>, drep_rptr p2: OpaqueRustPointer<Types.CSL_DRep>, coin_rptr p3: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_vote_registration_and_delegation_new(c_p1, c_p2, c_p3, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_vote_registration_and_delegation_has_script_credentials
        public static func voteRegistrationAndDelegationHasScriptCredentials(self_rptr p1: OpaqueRustPointer<Types.CSL_VoteRegistrationAndDelegation>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_vote_registration_and_delegation_has_script_credentials(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voter_to_bytes
        public static func voterToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Voter>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_voter_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voter_from_bytes
        public static func voterFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Voter> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voter_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voter_to_hex
        public static func voterToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Voter>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_voter_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voter_from_hex
        public static func voterFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Voter> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voter_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voter_to_json
        public static func voterToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Voter>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_voter_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voter_from_json
        public static func voterFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Voter> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voter_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voter_new_constitutional_committee_hot_credential
        public static func voterNewConstitutionalCommitteeHotCredential(cred_rptr p1: OpaqueRustPointer<Types.CSL_Credential>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voter_new_constitutional_committee_hot_credential(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voter_new_drep_credential
        public static func voterNewDrepCredential(cred_rptr p1: OpaqueRustPointer<Types.CSL_Credential>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voter_new_drep_credential(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voter_new_stake_pool_key_hash
        public static func voterNewStakePoolKeyHash(key_hash_rptr p1: OpaqueRustPointer<Types.CSL_Ed25519KeyHash>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voter_new_stake_pool_key_hash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voter_kind
        public static func voterKind(self_rptr p1: OpaqueRustPointer<Types.CSL_Voter>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_voter_kind(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voter_to_constitutional_committee_hot_credential
        public static func voterToConstitutionalCommitteeHotCredential(self_rptr p1: OpaqueRustPointer<Types.CSL_Voter>) throws -> OpaqueRustPointer<Types.CSL_Credential> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voter_to_constitutional_committee_hot_credential(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voter_to_drep_credential
        public static func voterToDrepCredential(self_rptr p1: OpaqueRustPointer<Types.CSL_Voter>) throws -> OpaqueRustPointer<Types.CSL_Credential> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voter_to_drep_credential(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voter_to_stake_pool_key_hash
        public static func voterToStakePoolKeyHash(self_rptr p1: OpaqueRustPointer<Types.CSL_Voter>) throws -> OpaqueRustPointer<Types.CSL_StakePoolKeyHash> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voter_to_stake_pool_key_hash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voter_has_script_credentials
        public static func voterHasScriptCredentials(self_rptr p1: OpaqueRustPointer<Types.CSL_Voter>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_voter_has_script_credentials(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voter_to_key_hash
        public static func voterToKeyHash(self_rptr p1: OpaqueRustPointer<Types.CSL_Voter>) throws -> OpaqueRustPointer<Types.CSL_KeyHash> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voter_to_key_hash(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voters_to_json
        public static func votersToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Voters>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_voters_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voters_from_json
        public static func votersFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Voters> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voters_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voters_new
        public static func votersNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voters_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voters_len
        public static func votersLen(self_rptr p1: OpaqueRustPointer<Types.CSL_Voters>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_voters_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_builder_new
        public static func votingBuilderNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_builder_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_builder_has_plutus_scripts
        public static func votingBuilderHasPlutusScripts(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingBuilder>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_voting_builder_has_plutus_scripts(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_procedure_to_bytes
        public static func votingProcedureToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProcedure>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_voting_procedure_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_procedure_from_bytes
        public static func votingProcedureFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_VotingProcedure> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_procedure_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_procedure_to_hex
        public static func votingProcedureToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProcedure>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_voting_procedure_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_procedure_from_hex
        public static func votingProcedureFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VotingProcedure> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_procedure_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_procedure_to_json
        public static func votingProcedureToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProcedure>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_voting_procedure_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_procedure_from_json
        public static func votingProcedureFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VotingProcedure> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_procedure_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_procedure_new
        public static func votingProcedureNew(vote_int p1: Int32) throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_procedure_new(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_procedure_new_with_anchor
        public static func votingProcedureNewWithAnchor(vote_int p1: Int32, anchor_rptr p2: OpaqueRustPointer<Types.CSL_Anchor>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p2 = p2.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_procedure_new_with_anchor(p1, c_p2, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_procedure_vote_kind
        public static func votingProcedureVoteKind(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProcedure>) throws -> Int32 {
            let c_p1 = p1.cPointer
            var result  = Int32()
            var error: CharPtr? = nil
            let success = csl_bridge_voting_procedure_vote_kind(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_procedure_anchor
        public static func votingProcedureAnchor(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProcedure>) throws -> OpaqueRustPointer<Types.CSL_Anchor> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_procedure_anchor(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_procedures_to_bytes
        public static func votingProceduresToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProcedures>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_voting_procedures_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_procedures_from_bytes
        public static func votingProceduresFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_VotingProcedures> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_procedures_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_procedures_to_hex
        public static func votingProceduresToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProcedures>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_voting_procedures_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_procedures_from_hex
        public static func votingProceduresFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VotingProcedures> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_procedures_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_procedures_to_json
        public static func votingProceduresToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProcedures>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_voting_procedures_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_procedures_from_json
        public static func votingProceduresFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VotingProcedures> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_procedures_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_procedures_new
        public static func votingProceduresNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_procedures_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposal_to_bytes
        public static func votingProposalToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProposal>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposal_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposal_from_bytes
        public static func votingProposalFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_VotingProposal> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposal_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposal_to_hex
        public static func votingProposalToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProposal>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposal_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposal_from_hex
        public static func votingProposalFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VotingProposal> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposal_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposal_to_json
        public static func votingProposalToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProposal>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposal_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposal_from_json
        public static func votingProposalFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VotingProposal> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposal_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposal_anchor
        public static func votingProposalAnchor(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProposal>) throws -> OpaqueRustPointer<Types.CSL_Anchor> {
            let c_p1 = p1.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposal_anchor(c_p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposal_new
        public static func votingProposalNew(governance_action_rptr p1: OpaqueRustPointer<Types.CSL_GovernanceAction>, anchor_rptr p2: OpaqueRustPointer<Types.CSL_Anchor>, reward_account_rptr p3: OpaqueRustPointer<Types.CSL_RewardAddress>, deposit_rptr p4: OpaqueRustPointer<Types.CSL_BigNum>) throws -> OpaqueRustPointer<Types.CSL_None> {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            let c_p3 = p3.cPointer
            let c_p4 = p4.cPointer
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposal_new(c_p1, c_p2, c_p3, c_p4, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposal_builder_new
        public static func votingProposalBuilderNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposal_builder_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposal_builder_has_plutus_scripts
        public static func votingProposalBuilderHasPlutusScripts(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProposalBuilder>) throws -> Bool {
            let c_p1 = p1.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposal_builder_has_plutus_scripts(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposals_to_bytes
        public static func votingProposalsToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProposals>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposals_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposals_from_bytes
        public static func votingProposalsFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_VotingProposals> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposals_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposals_to_hex
        public static func votingProposalsToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProposals>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposals_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposals_from_hex
        public static func votingProposalsFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VotingProposals> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposals_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposals_to_json
        public static func votingProposalsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProposals>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposals_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposals_from_json
        public static func votingProposalsFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_VotingProposals> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposals_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposals_new
        public static func votingProposalsNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposals_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposals_len
        public static func votingProposalsLen(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProposals>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposals_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposals_add
        public static func votingProposalsAdd(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProposals>, proposal_rptr p2: OpaqueRustPointer<Types.CSL_VotingProposal>) throws -> Bool {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposals_add(c_p1, c_p2, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_voting_proposals_contains
        public static func votingProposalsContains(self_rptr p1: OpaqueRustPointer<Types.CSL_VotingProposals>, elem_rptr p2: OpaqueRustPointer<Types.CSL_VotingProposal>) throws -> Bool {
            let c_p1 = p1.cPointer
            let c_p2 = p2.cPointer
            var result  = Bool()
            var error: CharPtr? = nil
            let success = csl_bridge_voting_proposals_contains(c_p1, c_p2, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_withdrawals_to_bytes
        public static func withdrawalsToBytes(self_rptr p1: OpaqueRustPointer<Types.CSL_Withdrawals>) throws -> Data {
            let c_p1 = p1.cPointer
            var result  = try DataPtr.init(fromData: Data())
            var error: CharPtr? = nil
            let success = csl_bridge_withdrawals_to_bytes(c_p1, &result, &error)
            if success {
                return Data(dataPtr: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_withdrawals_from_bytes
        public static func withdrawalsFromBytes(bytes_data p1: Data) throws -> OpaqueRustPointer<Types.CSL_Withdrawals> {
            var c_p1_ptr = p1.withUnsafeBytes { $0.bindMemory(to: UInt8.self).baseAddress }!
            let c_p1_len = UInt(p1.count)
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_withdrawals_from_bytes(&c_p1_ptr, c_p1_len, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_withdrawals_to_hex
        public static func withdrawalsToHex(self_rptr p1: OpaqueRustPointer<Types.CSL_Withdrawals>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_withdrawals_to_hex(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_withdrawals_from_hex
        public static func withdrawalsFromHex(hex_str_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Withdrawals> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_withdrawals_from_hex(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_withdrawals_to_json
        public static func withdrawalsToJson(self_rptr p1: OpaqueRustPointer<Types.CSL_Withdrawals>) throws -> String {
            let c_p1 = p1.cPointer
            var result : CharPtr? = nil
            var error: CharPtr? = nil
            let success = csl_bridge_withdrawals_to_json(c_p1, &result, &error)
            if success {
                return String(cString: result!)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_withdrawals_from_json
        public static func withdrawalsFromJson(json_str p1: String) throws -> OpaqueRustPointer<Types.CSL_Withdrawals> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_withdrawals_from_json(p1, &result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_withdrawals_new
        public static func withdrawalsNew() throws -> OpaqueRustPointer<Types.CSL_None> {
            
            var result  = RPtr(_0: nil)
            var error: CharPtr? = nil
            let success = csl_bridge_withdrawals_new(&result, &error)
            if success {
                return OpaqueRustPointer(cPointer: result)
            } else {
                throw createError(from: error)
            }
        }
        

        // Swift Wrapper call to csl_bridge_withdrawals_len
        public static func withdrawalsLen(self_rptr p1: OpaqueRustPointer<Types.CSL_Withdrawals>) throws -> Int64 {
            let c_p1 = p1.cPointer
            var result  = Int64()
            var error: CharPtr? = nil
            let success = csl_bridge_withdrawals_len(c_p1, &result, &error)
            if success {
                return result
            } else {
                throw createError(from: error)
            }
        }
}
