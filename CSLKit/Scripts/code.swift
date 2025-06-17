// MARK: - Generated API Methods

public static func addressFromBech32(input: String) throws -> OpaqueRustPointer<Address> {
    return try callRustFunction(csl_bridge_address_from_bech32, input: input)
}

public static func addressFromHex(input: String) throws -> OpaqueRustPointer<Address> {
    return try callRustFunction(csl_bridge_address_from_hex, input: input)
}

public static func addressFromJson(input: String) throws -> OpaqueRustPointer<Address> {
    return try callRustFunction(csl_bridge_address_from_json, input: input)
}

public static func addressIsMalformed(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_address_is_malformed, input: self)
}

public static func addressKind(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_address_kind, input: self)
}

public static func addressNetworkId(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_address_network_id, input: self)
}

public static func addressPaymentCred(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Address> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_address_payment_cred, input: self)
}

public static func addressToBech32(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_address_to_bech32, input: self)
}

public static func addressToBech32WithPrefix(self: OpaqueRustPointer<Self>, string2: String) throws -> String {
    return try callRustFunctionRPtrAndString(csl_bridge_address_to_bech32_with_prefix, input: self, string: string2)
}

public static func addressToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_address_to_bytes, input: self)
}

public static func addressToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_address_to_hex, input: self)
}

public static func addressToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_address_to_json, input: self)
}

public static func anchorAnchorDataHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Anchor> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_anchor_anchor_data_hash, input: self)
}

public static func anchorDataHashFromBech32(input: String) throws -> OpaqueRustPointer<Anchor> {
    return try callRustFunction(csl_bridge_anchor_data_hash_from_bech32, input: input)
}

public static func anchorDataHashFromHex(input: String) throws -> OpaqueRustPointer<Anchor> {
    return try callRustFunction(csl_bridge_anchor_data_hash_from_hex, input: input)
}

public static func anchorDataHashToBech32(self: OpaqueRustPointer<Self>, string2: String) throws -> String {
    return try callRustFunctionRPtrAndString(csl_bridge_anchor_data_hash_to_bech32, input: self, string: string2)
}

public static func anchorDataHashToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_anchor_data_hash_to_bytes, input: self)
}

public static func anchorDataHashToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_anchor_data_hash_to_hex, input: self)
}

public static func anchorFromHex(input: String) throws -> OpaqueRustPointer<Anchor> {
    return try callRustFunction(csl_bridge_anchor_from_hex, input: input)
}

public static func anchorFromJson(input: String) throws -> OpaqueRustPointer<Anchor> {
    return try callRustFunction(csl_bridge_anchor_from_json, input: input)
}

public static func anchorNew(anchor: OpaqueRustPointer<Anchor>, anchor: OpaqueRustPointer<Anchor>) throws -> OpaqueRustPointer<Anchor> {
    return try callRustFunctionTwoRPtrs(csl_bridge_anchor_new, input1: anchor, input2: anchor)
}

public static func anchorToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_anchor_to_bytes, input: self)
}

public static func anchorToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_anchor_to_hex, input: self)
}

public static func anchorToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_anchor_to_json, input: self)
}

public static func anchorUrl(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Anchor> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_anchor_url, input: self)
}

public static func assetNameFromHex(input: String) throws -> OpaqueRustPointer<Asset> {
    return try callRustFunction(csl_bridge_asset_name_from_hex, input: input)
}

public static func assetNameFromJson(input: String) throws -> OpaqueRustPointer<Asset> {
    return try callRustFunction(csl_bridge_asset_name_from_json, input: input)
}

public static func assetNameName(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_asset_name_name, input: self)
}

public static func assetNameToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_asset_name_to_bytes, input: self)
}

public static func assetNameToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_asset_name_to_hex, input: self)
}

public static func assetNameToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_asset_name_to_json, input: self)
}

public static func assetNamesAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_asset_names_add
}

public static func assetNamesFromHex(input: String) throws -> OpaqueRustPointer<Asset> {
    return try callRustFunction(csl_bridge_asset_names_from_hex, input: input)
}

public static func assetNamesFromJson(input: String) throws -> OpaqueRustPointer<Asset> {
    return try callRustFunction(csl_bridge_asset_names_from_json, input: input)
}

public static func assetNamesGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Asset> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_asset_names_get
}

public static func assetNamesLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_asset_names_len, input: self)
}

public static func assetNamesNew() throws -> OpaqueRustPointer<Asset> {
    return try callRustFunctionNoInput(csl_bridge_asset_names_new)
}

public static func assetNamesToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_asset_names_to_bytes, input: self)
}

public static func assetNamesToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_asset_names_to_hex, input: self)
}

public static func assetNamesToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_asset_names_to_json, input: self)
}

public static func assetsFromHex(input: String) throws -> OpaqueRustPointer<Asset> {
    return try callRustFunction(csl_bridge_assets_from_hex, input: input)
}

public static func assetsFromJson(input: String) throws -> OpaqueRustPointer<Asset> {
    return try callRustFunction(csl_bridge_assets_from_json, input: input)
}

public static func assetsGet(self: OpaqueRustPointer<Self>, key: OpaqueRustPointer<Key>) throws -> OpaqueRustPointer<Asset> {
    return try callRustFunctionTwoRPtrs(csl_bridge_assets_get, input1: self, input2: key)
}

public static func assetsKeys(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Asset> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_assets_keys, input: self)
}

public static func assetsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_assets_len, input: self)
}

public static func assetsNew() throws -> OpaqueRustPointer<Asset> {
    return try callRustFunctionNoInput(csl_bridge_assets_new)
}

public static func assetsToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_assets_to_bytes, input: self)
}

public static func assetsToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_assets_to_hex, input: self)
}

public static func assetsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_assets_to_json, input: self)
}

public static func auxiliaryDataFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_auxiliary_data_from_hex, input: input)
}

public static func auxiliaryDataFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_auxiliary_data_from_json, input: input)
}

public static func auxiliaryDataHashFromBech32(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_auxiliary_data_hash_from_bech32, input: input)
}

public static func auxiliaryDataHashFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_auxiliary_data_hash_from_hex, input: input)
}

public static func auxiliaryDataHashToBech32(self: OpaqueRustPointer<Self>, string2: String) throws -> String {
    return try callRustFunctionRPtrAndString(csl_bridge_auxiliary_data_hash_to_bech32, input: self, string: string2)
}

public static func auxiliaryDataHashToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_auxiliary_data_hash_to_bytes, input: self)
}

public static func auxiliaryDataHashToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_auxiliary_data_hash_to_hex, input: self)
}

public static func auxiliaryDataMetadata(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_auxiliary_data_metadata, input: self)
}

public static func auxiliaryDataNativeScripts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_auxiliary_data_native_scripts, input: self)
}

public static func auxiliaryDataNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_auxiliary_data_new)
}

public static func auxiliaryDataPlutusScripts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_auxiliary_data_plutus_scripts, input: self)
}

public static func auxiliaryDataPreferAlonzoFormat(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_auxiliary_data_prefer_alonzo_format, input: self)
}

public static func auxiliaryDataSetGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_auxiliary_data_set_get
}

public static func auxiliaryDataSetIndices(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_auxiliary_data_set_indices, input: self)
}

public static func auxiliaryDataSetLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_auxiliary_data_set_len, input: self)
}

public static func auxiliaryDataSetMetadata(metadata: OpaqueRustPointer<Metadata>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_auxiliary_data_set_metadata
}

public static func auxiliaryDataSetNativeScripts(script: OpaqueRustPointer<Script>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_auxiliary_data_set_native_scripts
}

public static func auxiliaryDataSetNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_auxiliary_data_set_new)
}

public static func auxiliaryDataSetPlutusScripts(script: OpaqueRustPointer<Script>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_auxiliary_data_set_plutus_scripts
}

public static func auxiliaryDataSetPreferAlonzoFormat(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_auxiliary_data_set_prefer_alonzo_format
}

public static func auxiliaryDataToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_auxiliary_data_to_bytes, input: self)
}

public static func auxiliaryDataToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_auxiliary_data_to_hex, input: self)
}

public static func auxiliaryDataToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_auxiliary_data_to_json, input: self)
}

public static func baseAddressFromAddress(addr: OpaqueRustPointer<Addr>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_base_address_from_address, input: addr)
}

public static func baseAddressNetworkId(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_base_address_network_id, input: self)
}

public static func baseAddressPaymentCred(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_base_address_payment_cred, input: self)
}

public static func baseAddressStakeCred(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_base_address_stake_cred, input: self)
}

public static func baseAddressToAddress(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_base_address_to_address, input: self)
}

public static func bigIntAbs(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<BigInt> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_big_int_abs, input: self)
}

public static func bigIntAdd(self: OpaqueRustPointer<Self>, other: OpaqueRustPointer<Other>) throws -> OpaqueRustPointer<BigInt> {
    return try callRustFunctionTwoRPtrs(csl_bridge_big_int_add, input1: self, input2: other)
}

public static func bigIntAsInt(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<BigInt> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_big_int_as_int, input: self)
}

public static func bigIntAsU64(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<BigInt> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_big_int_as_u64, input: self)
}

public static func bigIntDivCeil(self: OpaqueRustPointer<Self>, other: OpaqueRustPointer<Other>) throws -> OpaqueRustPointer<BigInt> {
    return try callRustFunctionTwoRPtrs(csl_bridge_big_int_div_ceil, input1: self, input2: other)
}

public static func bigIntDivFloor(self: OpaqueRustPointer<Self>, other: OpaqueRustPointer<Other>) throws -> OpaqueRustPointer<BigInt> {
    return try callRustFunctionTwoRPtrs(csl_bridge_big_int_div_floor, input1: self, input2: other)
}

public static func bigIntFromHex(input: String) throws -> OpaqueRustPointer<BigInt> {
    return try callRustFunction(csl_bridge_big_int_from_hex, input: input)
}

public static func bigIntFromJson(input: String) throws -> OpaqueRustPointer<BigInt> {
    return try callRustFunction(csl_bridge_big_int_from_json, input: input)
}

public static func bigIntFromStr(input: String) throws -> OpaqueRustPointer<BigInt> {
    return try callRustFunction(csl_bridge_big_int_from_str, input: input)
}

public static func bigIntIncrement(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<BigInt> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_big_int_increment, input: self)
}

public static func bigIntIsZero(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_big_int_is_zero, input: self)
}

public static func bigIntMul(self: OpaqueRustPointer<Self>, other: OpaqueRustPointer<Other>) throws -> OpaqueRustPointer<BigInt> {
    return try callRustFunctionTwoRPtrs(csl_bridge_big_int_mul, input1: self, input2: other)
}

public static func bigIntOne() throws -> OpaqueRustPointer<BigInt> {
    return try callRustFunctionNoInput(csl_bridge_big_int_one)
}

public static func bigIntPow(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<BigInt> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_big_int_pow
}

public static func bigIntSub(self: OpaqueRustPointer<Self>, other: OpaqueRustPointer<Other>) throws -> OpaqueRustPointer<BigInt> {
    return try callRustFunctionTwoRPtrs(csl_bridge_big_int_sub, input1: self, input2: other)
}

public static func bigIntToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_big_int_to_bytes, input: self)
}

public static func bigIntToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_big_int_to_hex, input: self)
}

public static func bigIntToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_big_int_to_json, input: self)
}

public static func bigIntToStr(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_big_int_to_str, input: self)
}

public static func bigIntZero() throws -> OpaqueRustPointer<BigInt> {
    return try callRustFunctionNoInput(csl_bridge_big_int_zero)
}

public static func bigNumCheckedAdd(self: OpaqueRustPointer<Self>, other: OpaqueRustPointer<Other>) throws -> OpaqueRustPointer<BigNum> {
    return try callRustFunctionTwoRPtrs(csl_bridge_big_num_checked_add, input1: self, input2: other)
}

public static func bigNumCheckedMul(self: OpaqueRustPointer<Self>, other: OpaqueRustPointer<Other>) throws -> OpaqueRustPointer<BigNum> {
    return try callRustFunctionTwoRPtrs(csl_bridge_big_num_checked_mul, input1: self, input2: other)
}

public static func bigNumCheckedSub(self: OpaqueRustPointer<Self>, other: OpaqueRustPointer<Other>) throws -> OpaqueRustPointer<BigNum> {
    return try callRustFunctionTwoRPtrs(csl_bridge_big_num_checked_sub, input1: self, input2: other)
}

public static func bigNumClampedSub(self: OpaqueRustPointer<Self>, other: OpaqueRustPointer<Other>) throws -> OpaqueRustPointer<BigNum> {
    return try callRustFunctionTwoRPtrs(csl_bridge_big_num_clamped_sub, input1: self, input2: other)
}

public static func bigNumCompare(self: OpaqueRustPointer<Self>, value: OpaqueRustPointer<Value>) throws -> Int64 {
    return try callRustFunctionTwoRPtrsForInt64(csl_bridge_big_num_compare, input1: self, input2: value)
}

public static func bigNumDivFloor(self: OpaqueRustPointer<Self>, other: OpaqueRustPointer<Other>) throws -> OpaqueRustPointer<BigNum> {
    return try callRustFunctionTwoRPtrs(csl_bridge_big_num_div_floor, input1: self, input2: other)
}

public static func bigNumFromHex(input: String) throws -> OpaqueRustPointer<BigNum> {
    return try callRustFunction(csl_bridge_big_num_from_hex, input: input)
}

public static func bigNumFromJson(input: String) throws -> OpaqueRustPointer<BigNum> {
    return try callRustFunction(csl_bridge_big_num_from_json, input: input)
}

public static func bigNumFromStr(input: String) throws -> OpaqueRustPointer<BigNum> {
    return try callRustFunction(csl_bridge_big_num_from_str, input: input)
}

public static func bigNumIsZero(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_big_num_is_zero, input: self)
}

public static func bigNumLessThan(self: OpaqueRustPointer<Self>, value: OpaqueRustPointer<Value>) throws -> Bool {
    return try callRustFunctionTwoRPtrsForBool(csl_bridge_big_num_less_than, input1: self, input2: value)
}

public static func bigNumMax(a: OpaqueRustPointer<A>, b: OpaqueRustPointer<B>) throws -> OpaqueRustPointer<BigNum> {
    return try callRustFunctionTwoRPtrs(csl_bridge_big_num_max, input1: a, input2: b)
}

public static func bigNumMaxValue() throws -> OpaqueRustPointer<BigNum> {
    return try callRustFunctionNoInput(csl_bridge_big_num_max_value)
}

public static func bigNumOne() throws -> OpaqueRustPointer<BigNum> {
    return try callRustFunctionNoInput(csl_bridge_big_num_one)
}

public static func bigNumToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_big_num_to_bytes, input: self)
}

public static func bigNumToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_big_num_to_hex, input: self)
}

public static func bigNumToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_big_num_to_json, input: self)
}

public static func bigNumToStr(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_big_num_to_str, input: self)
}

public static func bigNumZero() throws -> OpaqueRustPointer<BigNum> {
    return try callRustFunctionNoInput(csl_bridge_big_num_zero)
}

public static func bip32PrivateKeyAsBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_bip32_private_key_as_bytes, input: self)
}

public static func bip32PrivateKeyChaincode(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_bip32_private_key_chaincode, input: self)
}

public static func bip32PrivateKeyDerive(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_bip32_private_key_derive
}

public static func bip32PrivateKeyFromBech32(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_bip32_private_key_from_bech32, input: input)
}

public static func bip32PrivateKeyFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_bip32_private_key_from_hex, input: input)
}

public static func bip32PrivateKeyGenerateEd25519Bip32() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_bip32_private_key_generate_ed25519_bip32)
}

public static func bip32PrivateKeyTo128Xprv(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_bip32_private_key_to_128_xprv, input: self)
}

public static func bip32PrivateKeyToBech32(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_bip32_private_key_to_bech32, input: self)
}

public static func bip32PrivateKeyToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_bip32_private_key_to_hex, input: self)
}

public static func bip32PrivateKeyToPublic(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_bip32_private_key_to_public, input: self)
}

public static func bip32PrivateKeyToRawKey(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_bip32_private_key_to_raw_key, input: self)
}

public static func bip32PublicKeyAsBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_bip32_public_key_as_bytes, input: self)
}

public static func bip32PublicKeyChaincode(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_bip32_public_key_chaincode, input: self)
}

public static func bip32PublicKeyDerive(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_bip32_public_key_derive
}

public static func bip32PublicKeyFromBech32(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_bip32_public_key_from_bech32, input: input)
}

public static func bip32PublicKeyFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_bip32_public_key_from_hex, input: input)
}

public static func bip32PublicKeyToBech32(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_bip32_public_key_to_bech32, input: self)
}

public static func bip32PublicKeyToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_bip32_public_key_to_hex, input: self)
}

public static func bip32PublicKeyToRawKey(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_bip32_public_key_to_raw_key, input: self)
}

public static func blockAuxiliaryDataSet(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Block> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_block_auxiliary_data_set, input: self)
}

public static func blockFromHex(input: String) throws -> OpaqueRustPointer<Block> {
    return try callRustFunction(csl_bridge_block_from_hex, input: input)
}

public static func blockFromJson(input: String) throws -> OpaqueRustPointer<Block> {
    return try callRustFunction(csl_bridge_block_from_json, input: input)
}

public static func blockHashFromBech32(input: String) throws -> OpaqueRustPointer<Block> {
    return try callRustFunction(csl_bridge_block_hash_from_bech32, input: input)
}

public static func blockHashFromHex(input: String) throws -> OpaqueRustPointer<Block> {
    return try callRustFunction(csl_bridge_block_hash_from_hex, input: input)
}

public static func blockHashToBech32(self: OpaqueRustPointer<Self>, string2: String) throws -> String {
    return try callRustFunctionRPtrAndString(csl_bridge_block_hash_to_bech32, input: self, string: string2)
}

public static func blockHashToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_block_hash_to_bytes, input: self)
}

public static func blockHashToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_block_hash_to_hex, input: self)
}

public static func blockHeader(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Block> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_block_header, input: self)
}

public static func blockInvalidTransactions(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_block_invalid_transactions, input: self)
}

public static func blockToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_block_to_bytes, input: self)
}

public static func blockToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_block_to_hex, input: self)
}

public static func blockToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_block_to_json, input: self)
}

public static func blockTransactionBodies(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Block> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_block_transaction_bodies, input: self)
}

public static func blockTransactionWitnessSets(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Block> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_block_transaction_witness_sets, input: self)
}

public static func bootstrapWitnessAttributes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_bootstrap_witness_attributes, input: self)
}

public static func bootstrapWitnessChainCode(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_bootstrap_witness_chain_code, input: self)
}

public static func bootstrapWitnessFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_bootstrap_witness_from_hex, input: input)
}

public static func bootstrapWitnessFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_bootstrap_witness_from_json, input: input)
}

public static func bootstrapWitnessSignature(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_bootstrap_witness_signature, input: self)
}

public static func bootstrapWitnessToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_bootstrap_witness_to_bytes, input: self)
}

public static func bootstrapWitnessToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_bootstrap_witness_to_hex, input: self)
}

public static func bootstrapWitnessToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_bootstrap_witness_to_json, input: self)
}

public static func bootstrapWitnessVkey(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_bootstrap_witness_vkey, input: self)
}

public static func bootstrapWitnessesAdd(self: OpaqueRustPointer<Self>, witness: OpaqueRustPointer<Witness>) throws -> Bool {
    return try callRustFunctionTwoRPtrsForBool(csl_bridge_bootstrap_witnesses_add, input1: self, input2: witness)
}

public static func bootstrapWitnessesFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_bootstrap_witnesses_from_hex, input: input)
}

public static func bootstrapWitnessesFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_bootstrap_witnesses_from_json, input: input)
}

public static func bootstrapWitnessesGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_bootstrap_witnesses_get
}

public static func bootstrapWitnessesLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_bootstrap_witnesses_len, input: self)
}

public static func bootstrapWitnessesNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_bootstrap_witnesses_new)
}

public static func bootstrapWitnessesToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_bootstrap_witnesses_to_bytes, input: self)
}

public static func bootstrapWitnessesToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_bootstrap_witnesses_to_hex, input: self)
}

public static func bootstrapWitnessesToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_bootstrap_witnesses_to_json, input: self)
}

public static func byronAddressAttributes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_byron_address_attributes, input: self)
}

public static func byronAddressByronAddressKind(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_byron_address_byron_address_kind, input: self)
}

public static func byronAddressByronProtocolMagic(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_byron_address_byron_protocol_magic, input: self)
}

public static func byronAddressFromAddress(addr: OpaqueRustPointer<Addr>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_byron_address_from_address, input: addr)
}

public static func byronAddressFromBase58(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_byron_address_from_base58, input: input)
}

public static func byronAddressIcarusFromKey(key: OpaqueRustPointer<Key>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_byron_address_icarus_from_key
}

public static func byronAddressIsValid(input: String) throws -> Bool {
    return try // TODO: Handle pattern string_to_bool for csl_bridge_byron_address_is_valid
}

public static func byronAddressNetworkId(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_byron_address_network_id, input: self)
}

public static func byronAddressToAddress(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_byron_address_to_address, input: self)
}

public static func byronAddressToBase58(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_byron_address_to_base58, input: self)
}

public static func byronAddressToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_byron_address_to_bytes, input: self)
}

public static func calculateExUnitsCeilCost(exunits: OpaqueRustPointer<ExUnits>, exunitprices: OpaqueRustPointer<ExUnitPrices>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_calculate_ex_units_ceil_cost, input1: exunits, input2: exunitprices)
}

public static func certificateAsCommitteeColdResign(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_committee_cold_resign, input: self)
}

public static func certificateAsCommitteeHotAuth(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_committee_hot_auth, input: self)
}

public static func certificateAsDrepDeregistration(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_drep_deregistration, input: self)
}

public static func certificateAsDrepRegistration(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_drep_registration, input: self)
}

public static func certificateAsDrepUpdate(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_drep_update, input: self)
}

public static func certificateAsGenesisKeyDelegation(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_genesis_key_delegation, input: self)
}

public static func certificateAsMoveInstantaneousRewardsCert(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_move_instantaneous_rewards_cert, input: self)
}

public static func certificateAsPoolRegistration(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_pool_registration, input: self)
}

public static func certificateAsPoolRetirement(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_pool_retirement, input: self)
}

public static func certificateAsRegCert(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_reg_cert, input: self)
}

public static func certificateAsStakeAndVoteDelegation(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_stake_and_vote_delegation, input: self)
}

public static func certificateAsStakeDelegation(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_stake_delegation, input: self)
}

public static func certificateAsStakeDeregistration(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_stake_deregistration, input: self)
}

public static func certificateAsStakeRegistration(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_stake_registration, input: self)
}

public static func certificateAsStakeRegistrationAndDelegation(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_stake_registration_and_delegation, input: self)
}

public static func certificateAsStakeVoteRegistrationAndDelegation(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_stake_vote_registration_and_delegation, input: self)
}

public static func certificateAsUnregCert(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_unreg_cert, input: self)
}

public static func certificateAsVoteDelegation(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_vote_delegation, input: self)
}

public static func certificateAsVoteRegistrationAndDelegation(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_as_vote_registration_and_delegation, input: self)
}

public static func certificateFromHex(input: String) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunction(csl_bridge_certificate_from_hex, input: input)
}

public static func certificateFromJson(input: String) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunction(csl_bridge_certificate_from_json, input: input)
}

public static func certificateHasRequiredScriptWitness(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_certificate_has_required_script_witness, input: self)
}

public static func certificateKind(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_certificate_kind, input: self)
}

public static func certificateNewCommitteeColdResign(committeecoldresign: OpaqueRustPointer<CommitteeColdResign>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_committee_cold_resign, input: committeecoldresign)
}

public static func certificateNewCommitteeHotAuth(committeehotauth: OpaqueRustPointer<CommitteeHotAuth>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_committee_hot_auth, input: committeehotauth)
}

public static func certificateNewDrepDeregistration(drepderegistration: OpaqueRustPointer<DrepDeregistration>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_drep_deregistration, input: drepderegistration)
}

public static func certificateNewDrepRegistration(drepregistration: OpaqueRustPointer<DrepRegistration>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_drep_registration, input: drepregistration)
}

public static func certificateNewDrepUpdate(drepupdate: OpaqueRustPointer<DrepUpdate>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_drep_update, input: drepupdate)
}

public static func certificateNewGenesisKeyDelegation(key: OpaqueRustPointer<Key>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_genesis_key_delegation, input: key)
}

public static func certificateNewMoveInstantaneousRewardsCert(reward: OpaqueRustPointer<Reward>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_move_instantaneous_rewards_cert, input: reward)
}

public static func certificateNewPoolRegistration(pool: OpaqueRustPointer<Pool>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_pool_registration, input: pool)
}

public static func certificateNewPoolRetirement(pool: OpaqueRustPointer<Pool>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_pool_retirement, input: pool)
}

public static func certificateNewRegCert(stake: OpaqueRustPointer<Stake>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_reg_cert, input: stake)
}

public static func certificateNewStakeAndVoteDelegation(stake: OpaqueRustPointer<Stake>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_stake_and_vote_delegation, input: stake)
}

public static func certificateNewStakeDelegation(stake: OpaqueRustPointer<Stake>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_stake_delegation, input: stake)
}

public static func certificateNewStakeDeregistration(stake: OpaqueRustPointer<Stake>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_stake_deregistration, input: stake)
}

public static func certificateNewStakeRegistration(stake: OpaqueRustPointer<Stake>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_stake_registration, input: stake)
}

public static func certificateNewStakeRegistrationAndDelegation(stake: OpaqueRustPointer<Stake>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_stake_registration_and_delegation, input: stake)
}

public static func certificateNewStakeVoteRegistrationAndDelegation(stake: OpaqueRustPointer<Stake>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_stake_vote_registration_and_delegation, input: stake)
}

public static func certificateNewUnregCert(stake: OpaqueRustPointer<Stake>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_unreg_cert, input: stake)
}

public static func certificateNewVoteDelegation(votedelegation: OpaqueRustPointer<VoteDelegation>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_vote_delegation, input: votedelegation)
}

public static func certificateNewVoteRegistrationAndDelegation(voteregistrationanddelegation: OpaqueRustPointer<VoteRegistrationAndDelegation>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificate_new_vote_registration_and_delegation, input: voteregistrationanddelegation)
}

public static func certificateToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_certificate_to_bytes, input: self)
}

public static func certificateToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_certificate_to_hex, input: self)
}

public static func certificateToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_certificate_to_json, input: self)
}

public static func certificatesAdd(self: OpaqueRustPointer<Self>, elem: OpaqueRustPointer<Elem>) throws -> Bool {
    return try callRustFunctionTwoRPtrsForBool(csl_bridge_certificates_add, input1: self, input2: elem)
}

public static func certificatesBuilderAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_certificates_builder_add
}

public static func certificatesBuilderAddWithNativeScript(script: OpaqueRustPointer<Script>, script: OpaqueRustPointer<Script>) throws -> Unknown {
    return try // TODO: Handle pattern two_rptrs_to_unknown for csl_bridge_certificates_builder_add_with_native_script
}

public static func certificatesBuilderAddWithPlutusWitness(witness: OpaqueRustPointer<Witness>, witness: OpaqueRustPointer<Witness>) throws -> Unknown {
    return try // TODO: Handle pattern two_rptrs_to_unknown for csl_bridge_certificates_builder_add_with_plutus_witness
}

public static func certificatesBuilderBuild(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificates_builder_build, input: self)
}

public static func certificatesBuilderGetNativeScripts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificates_builder_get_native_scripts, input: self)
}

public static func certificatesBuilderGetPlutusWitnesses(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificates_builder_get_plutus_witnesses, input: self)
}

public static func certificatesBuilderGetRefInputs(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_certificates_builder_get_ref_inputs, input: self)
}

public static func certificatesBuilderHasPlutusScripts(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_certificates_builder_has_plutus_scripts, input: self)
}

public static func certificatesBuilderNew() throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionNoInput(csl_bridge_certificates_builder_new)
}

public static func certificatesFromHex(input: String) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunction(csl_bridge_certificates_from_hex, input: input)
}

public static func certificatesFromJson(input: String) throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunction(csl_bridge_certificates_from_json, input: input)
}

public static func certificatesGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Certificate> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_certificates_get
}

public static func certificatesLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_certificates_len, input: self)
}

public static func certificatesNew() throws -> OpaqueRustPointer<Certificate> {
    return try callRustFunctionNoInput(csl_bridge_certificates_new)
}

public static func certificatesToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_certificates_to_bytes, input: self)
}

public static func certificatesToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_certificates_to_hex, input: self)
}

public static func certificatesToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_certificates_to_json, input: self)
}

public static func changeConfigChangeAddress(self: OpaqueRustPointer<Self>, address: OpaqueRustPointer<Address>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_change_config_change_address, input1: self, input2: address)
}

public static func changeConfigChangePlutusData(self: OpaqueRustPointer<Self>, plutusdata: OpaqueRustPointer<PlutusData>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_change_config_change_plutus_data, input1: self, input2: plutusdata)
}

public static func changeConfigChangeScriptRef(self: OpaqueRustPointer<Self>, script: OpaqueRustPointer<Script>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_change_config_change_script_ref, input1: self, input2: script)
}

public static func changeConfigNew(address: OpaqueRustPointer<Address>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_change_config_new, input: address)
}

public static func committeeAddMember(epoch: OpaqueRustPointer<Epoch>, epoch: OpaqueRustPointer<Epoch>) throws -> Unknown {
    return try // TODO: Handle pattern two_rptrs_to_unknown for csl_bridge_committee_add_member
}

public static func committeeColdResignAnchor(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_committee_cold_resign_anchor, input: self)
}

public static func committeeColdResignCommitteeColdCredential(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_committee_cold_resign_committee_cold_credential, input: self)
}

public static func committeeColdResignFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_committee_cold_resign_from_hex, input: input)
}

public static func committeeColdResignFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_committee_cold_resign_from_json, input: input)
}

public static func committeeColdResignHasScriptCredentials(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_committee_cold_resign_has_script_credentials, input: self)
}

public static func committeeColdResignNew(committeecoldcredential: OpaqueRustPointer<CommitteeColdCredential>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_committee_cold_resign_new, input: committeecoldcredential)
}

public static func committeeColdResignNewWithAnchor(committeecoldcredential: OpaqueRustPointer<CommitteeColdCredential>, anchor: OpaqueRustPointer<Anchor>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_committee_cold_resign_new_with_anchor, input1: committeecoldcredential, input2: anchor)
}

public static func committeeColdResignToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_committee_cold_resign_to_bytes, input: self)
}

public static func committeeColdResignToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_committee_cold_resign_to_hex, input: self)
}

public static func committeeColdResignToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_committee_cold_resign_to_json, input: self)
}

public static func committeeFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_committee_from_hex, input: input)
}

public static func committeeFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_committee_from_json, input: input)
}

public static func committeeGetMemberEpoch(self: OpaqueRustPointer<Self>, committeecoldcredential: OpaqueRustPointer<CommitteeColdCredential>) throws -> Int64 {
    return try callRustFunctionTwoRPtrsForInt64(csl_bridge_committee_get_member_epoch, input1: self, input2: committeecoldcredential)
}

public static func committeeHotAuthCommitteeColdCredential(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_committee_hot_auth_committee_cold_credential, input: self)
}

public static func committeeHotAuthCommitteeHotCredential(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_committee_hot_auth_committee_hot_credential, input: self)
}

public static func committeeHotAuthFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_committee_hot_auth_from_hex, input: input)
}

public static func committeeHotAuthFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_committee_hot_auth_from_json, input: input)
}

public static func committeeHotAuthHasScriptCredentials(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_committee_hot_auth_has_script_credentials, input: self)
}

public static func committeeHotAuthNew(committeecoldcredential: OpaqueRustPointer<CommitteeColdCredential>, committeehotcredential: OpaqueRustPointer<CommitteeHotCredential>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_committee_hot_auth_new, input1: committeecoldcredential, input2: committeehotcredential)
}

public static func committeeHotAuthToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_committee_hot_auth_to_bytes, input: self)
}

public static func committeeHotAuthToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_committee_hot_auth_to_hex, input: self)
}

public static func committeeHotAuthToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_committee_hot_auth_to_json, input: self)
}

public static func committeeMembersKeys(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_committee_members_keys, input: self)
}

public static func committeeNew(quorumthreshold: OpaqueRustPointer<QuorumThreshold>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_committee_new, input: quorumthreshold)
}

public static func committeeQuorumThreshold(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_committee_quorum_threshold, input: self)
}

public static func committeeToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_committee_to_bytes, input: self)
}

public static func committeeToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_committee_to_hex, input: self)
}

public static func committeeToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_committee_to_json, input: self)
}

public static func constitutionAnchor(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_constitution_anchor, input: self)
}

public static func constitutionFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_constitution_from_hex, input: input)
}

public static func constitutionFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_constitution_from_json, input: input)
}

public static func constitutionNew(anchor: OpaqueRustPointer<Anchor>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_constitution_new, input: anchor)
}

public static func constitutionNewWithScriptHash(anchor: OpaqueRustPointer<Anchor>, hash: OpaqueRustPointer<Hash>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_constitution_new_with_script_hash, input1: anchor, input2: hash)
}

public static func constitutionScriptHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_constitution_script_hash, input: self)
}

public static func constitutionToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_constitution_to_bytes, input: self)
}

public static func constitutionToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_constitution_to_hex, input: self)
}

public static func constitutionToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_constitution_to_json, input: self)
}

public static func constrPlutusDataAlternative(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_constr_plutus_data_alternative, input: self)
}

public static func constrPlutusDataData(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_constr_plutus_data_data, input: self)
}

public static func constrPlutusDataFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_constr_plutus_data_from_hex, input: input)
}

public static func constrPlutusDataNew(alternative: OpaqueRustPointer<Alternative>, data: OpaqueRustPointer<Data>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_constr_plutus_data_new, input1: alternative, input2: data)
}

public static func constrPlutusDataToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_constr_plutus_data_to_bytes, input: self)
}

public static func constrPlutusDataToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_constr_plutus_data_to_hex, input: self)
}

public static func costModelFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_cost_model_from_hex, input: input)
}

public static func costModelFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_cost_model_from_json, input: input)
}

public static func costModelGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_cost_model_get
}

public static func costModelLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_cost_model_len, input: self)
}

public static func costModelNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_cost_model_new)
}

public static func costModelToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_cost_model_to_bytes, input: self)
}

public static func costModelToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_cost_model_to_hex, input: self)
}

public static func costModelToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_cost_model_to_json, input: self)
}

public static func costmdlsFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_costmdls_from_hex, input: input)
}

public static func costmdlsFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_costmdls_from_json, input: input)
}

public static func costmdlsGet(self: OpaqueRustPointer<Self>, key: OpaqueRustPointer<Key>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_costmdls_get, input1: self, input2: key)
}

public static func costmdlsKeys(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_costmdls_keys, input: self)
}

public static func costmdlsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_costmdls_len, input: self)
}

public static func costmdlsNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_costmdls_new)
}

public static func costmdlsRetainLanguageVersions(self: OpaqueRustPointer<Self>, languages: OpaqueRustPointer<Languages>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_costmdls_retain_language_versions, input1: self, input2: languages)
}

public static func costmdlsToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_costmdls_to_bytes, input: self)
}

public static func costmdlsToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_costmdls_to_hex, input: self)
}

public static func costmdlsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_costmdls_to_json, input: self)
}

public static func credentialFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_credential_from_hex, input: input)
}

public static func credentialFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_credential_from_json, input: input)
}

public static func credentialFromKeyhash(hash: OpaqueRustPointer<Hash>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_credential_from_keyhash, input: hash)
}

public static func credentialFromScripthash(hash: OpaqueRustPointer<Hash>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_credential_from_scripthash, input: hash)
}

public static func credentialHasScriptHash(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_credential_has_script_hash, input: self)
}

public static func credentialKind(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_credential_kind, input: self)
}

public static func credentialToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_credential_to_bytes, input: self)
}

public static func credentialToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_credential_to_hex, input: self)
}

public static func credentialToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_credential_to_json, input: self)
}

public static func credentialToKeyhash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_credential_to_keyhash, input: self)
}

public static func credentialToScripthash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_credential_to_scripthash, input: self)
}

public static func credentialsAdd(self: OpaqueRustPointer<Self>, credential: OpaqueRustPointer<Credential>) throws -> Bool {
    return try callRustFunctionTwoRPtrsForBool(csl_bridge_credentials_add, input1: self, input2: credential)
}

public static func credentialsFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_credentials_from_hex, input: input)
}

public static func credentialsFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_credentials_from_json, input: input)
}

public static func credentialsGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_credentials_get
}

public static func credentialsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_credentials_len, input: self)
}

public static func credentialsNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_credentials_new)
}

public static func credentialsToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_credentials_to_bytes, input: self)
}

public static func credentialsToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_credentials_to_hex, input: self)
}

public static func credentialsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_credentials_to_json, input: self)
}

public static func dNSRecordAorAAAAFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_d_n_s_record_aor_a_a_a_a_from_hex, input: input)
}

public static func dNSRecordAorAAAAFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_d_n_s_record_aor_a_a_a_a_from_json, input: input)
}

public static func dNSRecordAorAAAANew(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_d_n_s_record_aor_a_a_a_a_new, input: input)
}

public static func dNSRecordAorAAAARecord(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_d_n_s_record_aor_a_a_a_a_record, input: self)
}

public static func dNSRecordAorAAAAToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_d_n_s_record_aor_a_a_a_a_to_bytes, input: self)
}

public static func dNSRecordAorAAAAToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_d_n_s_record_aor_a_a_a_a_to_hex, input: self)
}

public static func dNSRecordAorAAAAToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_d_n_s_record_aor_a_a_a_a_to_json, input: self)
}

public static func dNSRecordSRVFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_d_n_s_record_s_r_v_from_hex, input: input)
}

public static func dNSRecordSRVFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_d_n_s_record_s_r_v_from_json, input: input)
}

public static func dNSRecordSRVNew(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_d_n_s_record_s_r_v_new, input: input)
}

public static func dNSRecordSRVRecord(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_d_n_s_record_s_r_v_record, input: self)
}

public static func dNSRecordSRVToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_d_n_s_record_s_r_v_to_bytes, input: self)
}

public static func dNSRecordSRVToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_d_n_s_record_s_r_v_to_hex, input: self)
}

public static func dNSRecordSRVToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_d_n_s_record_s_r_v_to_json, input: self)
}

public static func dRepDeregistrationCoin(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_deregistration_coin, input: self)
}

public static func dRepDeregistrationFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_d_rep_deregistration_from_hex, input: input)
}

public static func dRepDeregistrationFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_d_rep_deregistration_from_json, input: input)
}

public static func dRepDeregistrationHasScriptCredentials(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_d_rep_deregistration_has_script_credentials, input: self)
}

public static func dRepDeregistrationNew(votingcredential: OpaqueRustPointer<VotingCredential>, coin: OpaqueRustPointer<Coin>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_d_rep_deregistration_new, input1: votingcredential, input2: coin)
}

public static func dRepDeregistrationToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_d_rep_deregistration_to_bytes, input: self)
}

public static func dRepDeregistrationToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_d_rep_deregistration_to_hex, input: self)
}

public static func dRepDeregistrationToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_d_rep_deregistration_to_json, input: self)
}

public static func dRepDeregistrationVotingCredential(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_deregistration_voting_credential, input: self)
}

public static func dRepFromBech32(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_d_rep_from_bech32, input: input)
}

public static func dRepFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_d_rep_from_hex, input: input)
}

public static func dRepFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_d_rep_from_json, input: input)
}

public static func dRepKind(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_d_rep_kind, input: self)
}

public static func dRepNewAlwaysAbstain() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_d_rep_new_always_abstain)
}

public static func dRepNewAlwaysNoConfidence() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_d_rep_new_always_no_confidence)
}

public static func dRepNewFromCredential(cred: OpaqueRustPointer<Cred>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_new_from_credential, input: cred)
}

public static func dRepNewKeyHash(key: OpaqueRustPointer<Key>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_new_key_hash, input: key)
}

public static func dRepNewScriptHash(hash: OpaqueRustPointer<Hash>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_new_script_hash, input: hash)
}

public static func dRepRegistrationAnchor(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_registration_anchor, input: self)
}

public static func dRepRegistrationCoin(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_registration_coin, input: self)
}

public static func dRepRegistrationFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_d_rep_registration_from_hex, input: input)
}

public static func dRepRegistrationFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_d_rep_registration_from_json, input: input)
}

public static func dRepRegistrationHasScriptCredentials(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_d_rep_registration_has_script_credentials, input: self)
}

public static func dRepRegistrationNew(votingcredential: OpaqueRustPointer<VotingCredential>, coin: OpaqueRustPointer<Coin>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_d_rep_registration_new, input1: votingcredential, input2: coin)
}

public static func dRepRegistrationToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_d_rep_registration_to_bytes, input: self)
}

public static func dRepRegistrationToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_d_rep_registration_to_hex, input: self)
}

public static func dRepRegistrationToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_d_rep_registration_to_json, input: self)
}

public static func dRepRegistrationVotingCredential(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_registration_voting_credential, input: self)
}

public static func dRepToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_d_rep_to_bytes, input: self)
}

public static func dRepToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_d_rep_to_hex, input: self)
}

public static func dRepToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_d_rep_to_json, input: self)
}

public static func dRepToKeyHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_to_key_hash, input: self)
}

public static func dRepToScriptHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_to_script_hash, input: self)
}

public static func dRepUpdateAnchor(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_update_anchor, input: self)
}

public static func dRepUpdateFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_d_rep_update_from_hex, input: input)
}

public static func dRepUpdateFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_d_rep_update_from_json, input: input)
}

public static func dRepUpdateHasScriptCredentials(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_d_rep_update_has_script_credentials, input: self)
}

public static func dRepUpdateNew(votingcredential: OpaqueRustPointer<VotingCredential>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_update_new, input: votingcredential)
}

public static func dRepUpdateNewWithAnchor(votingcredential: OpaqueRustPointer<VotingCredential>, anchor: OpaqueRustPointer<Anchor>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_d_rep_update_new_with_anchor, input1: votingcredential, input2: anchor)
}

public static func dRepUpdateToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_d_rep_update_to_bytes, input: self)
}

public static func dRepUpdateToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_d_rep_update_to_hex, input: self)
}

public static func dRepUpdateToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_d_rep_update_to_json, input: self)
}

public static func dRepUpdateVotingCredential(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_update_voting_credential, input: self)
}

public static func dRepVotingThresholdsCommitteeNoConfidence(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_voting_thresholds_committee_no_confidence, input: self)
}

public static func dRepVotingThresholdsCommitteeNormal(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_voting_thresholds_committee_normal, input: self)
}

public static func dRepVotingThresholdsFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_d_rep_voting_thresholds_from_hex, input: input)
}

public static func dRepVotingThresholdsFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_d_rep_voting_thresholds_from_json, input: input)
}

public static func dRepVotingThresholdsHardForkInitiation(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_voting_thresholds_hard_fork_initiation, input: self)
}

public static func dRepVotingThresholdsMotionNoConfidence(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_voting_thresholds_motion_no_confidence, input: self)
}

public static func dRepVotingThresholdsPpEconomicGroup(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_voting_thresholds_pp_economic_group, input: self)
}

public static func dRepVotingThresholdsPpGovernanceGroup(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_voting_thresholds_pp_governance_group, input: self)
}

public static func dRepVotingThresholdsPpNetworkGroup(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_voting_thresholds_pp_network_group, input: self)
}

public static func dRepVotingThresholdsPpTechnicalGroup(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_voting_thresholds_pp_technical_group, input: self)
}

public static func dRepVotingThresholdsSetCommitteeNoConfidence(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_d_rep_voting_thresholds_set_committee_no_confidence
}

public static func dRepVotingThresholdsSetCommitteeNormal(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_d_rep_voting_thresholds_set_committee_normal
}

public static func dRepVotingThresholdsSetHardForkInitiation(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_d_rep_voting_thresholds_set_hard_fork_initiation
}

public static func dRepVotingThresholdsSetMotionNoConfidence(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_d_rep_voting_thresholds_set_motion_no_confidence
}

public static func dRepVotingThresholdsSetPpEconomicGroup(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_d_rep_voting_thresholds_set_pp_economic_group
}

public static func dRepVotingThresholdsSetPpGovernanceGroup(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_d_rep_voting_thresholds_set_pp_governance_group
}

public static func dRepVotingThresholdsSetPpNetworkGroup(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_d_rep_voting_thresholds_set_pp_network_group
}

public static func dRepVotingThresholdsSetPpTechnicalGroup(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_d_rep_voting_thresholds_set_pp_technical_group
}

public static func dRepVotingThresholdsSetTreasuryWithdrawal(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_d_rep_voting_thresholds_set_treasury_withdrawal
}

public static func dRepVotingThresholdsSetUpdateConstitution(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_d_rep_voting_thresholds_set_update_constitution
}

public static func dRepVotingThresholdsToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_d_rep_voting_thresholds_to_bytes, input: self)
}

public static func dRepVotingThresholdsToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_d_rep_voting_thresholds_to_hex, input: self)
}

public static func dRepVotingThresholdsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_d_rep_voting_thresholds_to_json, input: self)
}

public static func dRepVotingThresholdsTreasuryWithdrawal(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_voting_thresholds_treasury_withdrawal, input: self)
}

public static func dRepVotingThresholdsUpdateConstitution(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_d_rep_voting_thresholds_update_constitution, input: self)
}

public static func dataCostCoinsPerByte(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_data_cost_coins_per_byte, input: self)
}

public static func dataCostNewCoinsPerByte(coin: OpaqueRustPointer<Coin>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_data_cost_new_coins_per_byte, input: coin)
}

public static func dataHashFromBech32(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_data_hash_from_bech32, input: input)
}

public static func dataHashFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_data_hash_from_hex, input: input)
}

public static func dataHashToBech32(self: OpaqueRustPointer<Self>, string2: String) throws -> String {
    return try callRustFunctionRPtrAndString(csl_bridge_data_hash_to_bech32, input: self, string: string2)
}

public static func dataHashToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_data_hash_to_bytes, input: self)
}

public static func dataHashToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_data_hash_to_hex, input: self)
}

public static func datumSourceNew(datum: OpaqueRustPointer<Datum>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_datum_source_new, input: datum)
}

public static func datumSourceNewRefInput(input: OpaqueRustPointer<Input>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_datum_source_new_ref_input, input: input)
}

public static func decodeArbitraryBytesFromMetadatum(metadata: OpaqueRustPointer<Metadata>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_decode_arbitrary_bytes_from_metadatum, input: metadata)
}

public static func ed25519KeyHashFromBech32(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_ed25519_key_hash_from_bech32, input: input)
}

public static func ed25519KeyHashFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_ed25519_key_hash_from_hex, input: input)
}

public static func ed25519KeyHashToBech32(self: OpaqueRustPointer<Self>, string2: String) throws -> String {
    return try callRustFunctionRPtrAndString(csl_bridge_ed25519_key_hash_to_bech32, input: self, string: string2)
}

public static func ed25519KeyHashToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_ed25519_key_hash_to_bytes, input: self)
}

public static func ed25519KeyHashToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_ed25519_key_hash_to_hex, input: self)
}

public static func ed25519KeyHashesAdd(self: OpaqueRustPointer<Self>, key: OpaqueRustPointer<Key>) throws -> Bool {
    return try callRustFunctionTwoRPtrsForBool(csl_bridge_ed25519_key_hashes_add, input1: self, input2: key)
}

public static func ed25519KeyHashesContains(self: OpaqueRustPointer<Self>, elem: OpaqueRustPointer<Elem>) throws -> Bool {
    return try callRustFunctionTwoRPtrsForBool(csl_bridge_ed25519_key_hashes_contains, input1: self, input2: elem)
}

public static func ed25519KeyHashesFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_ed25519_key_hashes_from_hex, input: input)
}

public static func ed25519KeyHashesFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_ed25519_key_hashes_from_json, input: input)
}

public static func ed25519KeyHashesGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_ed25519_key_hashes_get
}

public static func ed25519KeyHashesLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_ed25519_key_hashes_len, input: self)
}

public static func ed25519KeyHashesNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_ed25519_key_hashes_new)
}

public static func ed25519KeyHashesToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_ed25519_key_hashes_to_bytes, input: self)
}

public static func ed25519KeyHashesToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_ed25519_key_hashes_to_hex, input: self)
}

public static func ed25519KeyHashesToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_ed25519_key_hashes_to_json, input: self)
}

public static func ed25519KeyHashesToOption(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_ed25519_key_hashes_to_option, input: self)
}

public static func ed25519SignatureFromBech32(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_ed25519_signature_from_bech32, input: input)
}

public static func ed25519SignatureFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_ed25519_signature_from_hex, input: input)
}

public static func ed25519SignatureToBech32(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_ed25519_signature_to_bech32, input: self)
}

public static func ed25519SignatureToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_ed25519_signature_to_bytes, input: self)
}

public static func ed25519SignatureToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_ed25519_signature_to_hex, input: self)
}

public static func enterpriseAddressFromAddress(addr: OpaqueRustPointer<Addr>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_enterprise_address_from_address, input: addr)
}

public static func enterpriseAddressNetworkId(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_enterprise_address_network_id, input: self)
}

public static func enterpriseAddressPaymentCred(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_enterprise_address_payment_cred, input: self)
}

public static func enterpriseAddressToAddress(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_enterprise_address_to_address, input: self)
}

public static func exUnitPricesFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_ex_unit_prices_from_hex, input: input)
}

public static func exUnitPricesFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_ex_unit_prices_from_json, input: input)
}

public static func exUnitPricesMemPrice(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_ex_unit_prices_mem_price, input: self)
}

public static func exUnitPricesNew(memprice: OpaqueRustPointer<MemPrice>, stepprice: OpaqueRustPointer<StepPrice>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_ex_unit_prices_new, input1: memprice, input2: stepprice)
}

public static func exUnitPricesStepPrice(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_ex_unit_prices_step_price, input: self)
}

public static func exUnitPricesToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_ex_unit_prices_to_bytes, input: self)
}

public static func exUnitPricesToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_ex_unit_prices_to_hex, input: self)
}

public static func exUnitPricesToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_ex_unit_prices_to_json, input: self)
}

public static func exUnitsFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_ex_units_from_hex, input: input)
}

public static func exUnitsFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_ex_units_from_json, input: input)
}

public static func exUnitsMem(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_ex_units_mem, input: self)
}

public static func exUnitsNew(mem: OpaqueRustPointer<Mem>, steps: OpaqueRustPointer<Steps>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_ex_units_new, input1: mem, input2: steps)
}

public static func exUnitsSteps(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_ex_units_steps, input: self)
}

public static func exUnitsToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_ex_units_to_bytes, input: self)
}

public static func exUnitsToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_ex_units_to_hex, input: self)
}

public static func exUnitsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_ex_units_to_json, input: self)
}

public static func fixedBlockAuxiliaryDataSet(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_fixed_block_auxiliary_data_set, input: self)
}

public static func fixedBlockBlockHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_fixed_block_block_hash, input: self)
}

public static func fixedBlockFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_fixed_block_from_hex, input: input)
}

public static func fixedBlockHeader(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_fixed_block_header, input: self)
}

public static func fixedBlockInvalidTransactions(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_fixed_block_invalid_transactions, input: self)
}

public static func fixedBlockTransactionBodies(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_fixed_block_transaction_bodies, input: self)
}

public static func fixedBlockTransactionWitnessSets(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_fixed_block_transaction_witness_sets, input: self)
}

public static func fixedTransactionAddBootstrapWitness(witness: OpaqueRustPointer<Witness>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_fixed_transaction_add_bootstrap_witness
}

public static func fixedTransactionAddVkeyWitness(witness: OpaqueRustPointer<Witness>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_fixed_transaction_add_vkey_witness
}

public static func fixedTransactionAuxiliaryData(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_fixed_transaction_auxiliary_data, input: self)
}

public static func fixedTransactionBodiesAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_fixed_transaction_bodies_add
}

public static func fixedTransactionBodiesFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_fixed_transaction_bodies_from_hex, input: input)
}

public static func fixedTransactionBodiesGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_fixed_transaction_bodies_get
}

public static func fixedTransactionBodiesLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_fixed_transaction_bodies_len, input: self)
}

public static func fixedTransactionBodiesNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_fixed_transaction_bodies_new)
}

public static func fixedTransactionBody(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_fixed_transaction_body, input: self)
}

public static func fixedTransactionBodyFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_fixed_transaction_body_from_hex, input: input)
}

public static func fixedTransactionBodyOriginalBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_fixed_transaction_body_original_bytes, input: self)
}

public static func fixedTransactionBodyTransactionBody(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_fixed_transaction_body_transaction_body, input: self)
}

public static func fixedTransactionBodyTxHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_fixed_transaction_body_tx_hash, input: self)
}

public static func fixedTransactionFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_fixed_transaction_from_hex, input: input)
}

public static func fixedTransactionIsValid(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_fixed_transaction_is_valid, input: self)
}

public static func fixedTransactionRawAuxiliaryData(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_fixed_transaction_raw_auxiliary_data, input: self)
}

public static func fixedTransactionRawBody(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_fixed_transaction_raw_body, input: self)
}

public static func fixedTransactionRawWitnessSet(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_fixed_transaction_raw_witness_set, input: self)
}

public static func fixedTransactionSetIsValid(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_fixed_transaction_set_is_valid
}

public static func fixedTransactionSignAndAddDaedalusBootstrapSignature(key: OpaqueRustPointer<Key>, key: OpaqueRustPointer<Key>) throws -> Unknown {
    return try // TODO: Handle pattern two_rptrs_to_unknown for csl_bridge_fixed_transaction_sign_and_add_daedalus_bootstrap_signature
}

public static func fixedTransactionSignAndAddIcarusBootstrapSignature(key: OpaqueRustPointer<Key>, key: OpaqueRustPointer<Key>) throws -> Unknown {
    return try // TODO: Handle pattern two_rptrs_to_unknown for csl_bridge_fixed_transaction_sign_and_add_icarus_bootstrap_signature
}

public static func fixedTransactionSignAndAddVkeySignature(key: OpaqueRustPointer<Key>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_fixed_transaction_sign_and_add_vkey_signature
}

public static func fixedTransactionToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_fixed_transaction_to_bytes, input: self)
}

public static func fixedTransactionToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_fixed_transaction_to_hex, input: self)
}

public static func fixedTransactionTransactionHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_fixed_transaction_transaction_hash, input: self)
}

public static func fixedTransactionWitnessSet(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_fixed_transaction_witness_set, input: self)
}

public static func fixedTxWitnessesSetAddBootstrapWitness(witness: OpaqueRustPointer<Witness>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_fixed_tx_witnesses_set_add_bootstrap_witness
}

public static func fixedTxWitnessesSetAddVkeyWitness(witness: OpaqueRustPointer<Witness>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_fixed_tx_witnesses_set_add_vkey_witness
}

public static func fixedTxWitnessesSetToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_fixed_tx_witnesses_set_to_bytes, input: self)
}

public static func fixedTxWitnessesSetTxWitnessesSet(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_fixed_tx_witnesses_set_tx_witnesses_set, input: self)
}

public static func fixedVersionedBlockBlock(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_fixed_versioned_block_block, input: self)
}

public static func fixedVersionedBlockEra(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_fixed_versioned_block_era, input: self)
}

public static func fixedVersionedBlockFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_fixed_versioned_block_from_hex, input: input)
}

public static func generalTransactionMetadataFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_general_transaction_metadata_from_hex, input: input)
}

public static func generalTransactionMetadataFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_general_transaction_metadata_from_json, input: input)
}

public static func generalTransactionMetadataGet(self: OpaqueRustPointer<Self>, key: OpaqueRustPointer<Key>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_general_transaction_metadata_get, input1: self, input2: key)
}

public static func generalTransactionMetadataKeys(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_general_transaction_metadata_keys, input: self)
}

public static func generalTransactionMetadataLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_general_transaction_metadata_len, input: self)
}

public static func generalTransactionMetadataNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_general_transaction_metadata_new)
}

public static func generalTransactionMetadataToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_general_transaction_metadata_to_bytes, input: self)
}

public static func generalTransactionMetadataToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_general_transaction_metadata_to_hex, input: self)
}

public static func generalTransactionMetadataToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_general_transaction_metadata_to_json, input: self)
}

public static func genesisDelegateHashFromBech32(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_genesis_delegate_hash_from_bech32, input: input)
}

public static func genesisDelegateHashFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_genesis_delegate_hash_from_hex, input: input)
}

public static func genesisDelegateHashToBech32(self: OpaqueRustPointer<Self>, string2: String) throws -> String {
    return try callRustFunctionRPtrAndString(csl_bridge_genesis_delegate_hash_to_bech32, input: self, string: string2)
}

public static func genesisDelegateHashToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_genesis_delegate_hash_to_bytes, input: self)
}

public static func genesisDelegateHashToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_genesis_delegate_hash_to_hex, input: self)
}

public static func genesisHashFromBech32(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_genesis_hash_from_bech32, input: input)
}

public static func genesisHashFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_genesis_hash_from_hex, input: input)
}

public static func genesisHashToBech32(self: OpaqueRustPointer<Self>, string2: String) throws -> String {
    return try callRustFunctionRPtrAndString(csl_bridge_genesis_hash_to_bech32, input: self, string: string2)
}

public static func genesisHashToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_genesis_hash_to_bytes, input: self)
}

public static func genesisHashToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_genesis_hash_to_hex, input: self)
}

public static func genesisHashesAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_genesis_hashes_add
}

public static func genesisHashesFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_genesis_hashes_from_hex, input: input)
}

public static func genesisHashesFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_genesis_hashes_from_json, input: input)
}

public static func genesisHashesGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_genesis_hashes_get
}

public static func genesisHashesLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_genesis_hashes_len, input: self)
}

public static func genesisHashesNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_genesis_hashes_new)
}

public static func genesisHashesToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_genesis_hashes_to_bytes, input: self)
}

public static func genesisHashesToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_genesis_hashes_to_hex, input: self)
}

public static func genesisHashesToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_genesis_hashes_to_json, input: self)
}

public static func genesisKeyDelegationFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_genesis_key_delegation_from_hex, input: input)
}

public static func genesisKeyDelegationFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_genesis_key_delegation_from_json, input: input)
}

public static func genesisKeyDelegationGenesisDelegateHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_genesis_key_delegation_genesis_delegate_hash, input: self)
}

public static func genesisKeyDelegationGenesishash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_genesis_key_delegation_genesishash, input: self)
}

public static func genesisKeyDelegationToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_genesis_key_delegation_to_bytes, input: self)
}

public static func genesisKeyDelegationToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_genesis_key_delegation_to_hex, input: self)
}

public static func genesisKeyDelegationToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_genesis_key_delegation_to_json, input: self)
}

public static func genesisKeyDelegationVrfKeyhash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_genesis_key_delegation_vrf_keyhash, input: self)
}

public static func governanceActionAsHardForkInitiationAction(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_governance_action_as_hard_fork_initiation_action, input: self)
}

public static func governanceActionAsInfoAction(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_governance_action_as_info_action, input: self)
}

public static func governanceActionAsNewCommitteeAction(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_governance_action_as_new_committee_action, input: self)
}

public static func governanceActionAsNewConstitutionAction(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_governance_action_as_new_constitution_action, input: self)
}

public static func governanceActionAsNoConfidenceAction(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_governance_action_as_no_confidence_action, input: self)
}

public static func governanceActionAsParameterChangeAction(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_governance_action_as_parameter_change_action, input: self)
}

public static func governanceActionAsTreasuryWithdrawalsAction(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_governance_action_as_treasury_withdrawals_action, input: self)
}

public static func governanceActionFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_governance_action_from_hex, input: input)
}

public static func governanceActionFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_governance_action_from_json, input: input)
}

public static func governanceActionIdFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_governance_action_id_from_hex, input: input)
}

public static func governanceActionIdFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_governance_action_id_from_json, input: input)
}

public static func governanceActionIdIndex(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_governance_action_id_index, input: self)
}

public static func governanceActionIdNew(transaction: OpaqueRustPointer<Transaction>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_governance_action_id_new
}

public static func governanceActionIdToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_governance_action_id_to_bytes, input: self)
}

public static func governanceActionIdToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_governance_action_id_to_hex, input: self)
}

public static func governanceActionIdToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_governance_action_id_to_json, input: self)
}

public static func governanceActionIdTransactionId(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_governance_action_id_transaction_id, input: self)
}

public static func governanceActionIdsAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_governance_action_ids_add
}

public static func governanceActionIdsFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_governance_action_ids_from_json, input: input)
}

public static func governanceActionIdsGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_governance_action_ids_get
}

public static func governanceActionIdsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_governance_action_ids_len, input: self)
}

public static func governanceActionIdsNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_governance_action_ids_new)
}

public static func governanceActionIdsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_governance_action_ids_to_json, input: self)
}

public static func governanceActionKind(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_governance_action_kind, input: self)
}

public static func governanceActionNewHardForkInitiationAction(hardforkinitiationaction: OpaqueRustPointer<HardForkInitiationAction>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_governance_action_new_hard_fork_initiation_action, input: hardforkinitiationaction)
}

public static func governanceActionNewInfoAction(infoaction: OpaqueRustPointer<InfoAction>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_governance_action_new_info_action, input: infoaction)
}

public static func governanceActionNewNewCommitteeAction(newcommitteeaction: OpaqueRustPointer<NewCommitteeAction>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_governance_action_new_new_committee_action, input: newcommitteeaction)
}

public static func governanceActionNewNewConstitutionAction(newconstitutionaction: OpaqueRustPointer<NewConstitutionAction>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_governance_action_new_new_constitution_action, input: newconstitutionaction)
}

public static func governanceActionNewNoConfidenceAction(noconfidenceaction: OpaqueRustPointer<NoConfidenceAction>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_governance_action_new_no_confidence_action, input: noconfidenceaction)
}

public static func governanceActionNewParameterChangeAction(parameterchangeaction: OpaqueRustPointer<ParameterChangeAction>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_governance_action_new_parameter_change_action, input: parameterchangeaction)
}

public static func governanceActionNewTreasuryWithdrawalsAction(treasurywithdrawalsaction: OpaqueRustPointer<TreasuryWithdrawalsAction>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_governance_action_new_treasury_withdrawals_action, input: treasurywithdrawalsaction)
}

public static func governanceActionToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_governance_action_to_bytes, input: self)
}

public static func governanceActionToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_governance_action_to_hex, input: self)
}

public static func governanceActionToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_governance_action_to_json, input: self)
}

public static func hardForkInitiationActionFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_hard_fork_initiation_action_from_hex, input: input)
}

public static func hardForkInitiationActionFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_hard_fork_initiation_action_from_json, input: input)
}

public static func hardForkInitiationActionGovActionId(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_hard_fork_initiation_action_gov_action_id, input: self)
}

public static func hardForkInitiationActionNew(protocolversion: OpaqueRustPointer<ProtocolVersion>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_hard_fork_initiation_action_new, input: protocolversion)
}

public static func hardForkInitiationActionNewWithActionId(govactionid: OpaqueRustPointer<GovActionId>, protocolversion: OpaqueRustPointer<ProtocolVersion>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_hard_fork_initiation_action_new_with_action_id, input1: govactionid, input2: protocolversion)
}

public static func hardForkInitiationActionProtocolVersion(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_hard_fork_initiation_action_protocol_version, input: self)
}

public static func hardForkInitiationActionToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_hard_fork_initiation_action_to_bytes, input: self)
}

public static func hardForkInitiationActionToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_hard_fork_initiation_action_to_hex, input: self)
}

public static func hardForkInitiationActionToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_hard_fork_initiation_action_to_json, input: self)
}

public static func hashAuxiliaryData(auxiliarydata: OpaqueRustPointer<AuxiliaryData>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_hash_auxiliary_data, input: auxiliarydata)
}

public static func hashPlutusData(plutusdata: OpaqueRustPointer<PlutusData>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_hash_plutus_data, input: plutusdata)
}

public static func hashScriptData(redeemers: OpaqueRustPointer<Redeemers>, costmodels: OpaqueRustPointer<CostModels>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_hash_script_data, input1: redeemers, input2: costmodels)
}

public static func headerBodyBlockBodyHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_header_body_block_body_hash, input: self)
}

public static func headerBodyBlockBodySize(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_header_body_block_body_size, input: self)
}

public static func headerBodyBlockNumber(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_header_body_block_number, input: self)
}

public static func headerBodyFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_header_body_from_hex, input: input)
}

public static func headerBodyFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_header_body_from_json, input: input)
}

public static func headerBodyHasNonceAndLeaderVrf(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_header_body_has_nonce_and_leader_vrf, input: self)
}

public static func headerBodyHasVrfResult(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_header_body_has_vrf_result, input: self)
}

public static func headerBodyIssuerVkey(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_header_body_issuer_vkey, input: self)
}

public static func headerBodyLeaderVrfOrNothing(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_header_body_leader_vrf_or_nothing, input: self)
}

public static func headerBodyNonceVrfOrNothing(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_header_body_nonce_vrf_or_nothing, input: self)
}

public static func headerBodyOperationalCert(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_header_body_operational_cert, input: self)
}

public static func headerBodyPrevHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_header_body_prev_hash, input: self)
}

public static func headerBodyProtocolVersion(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_header_body_protocol_version, input: self)
}

public static func headerBodySignature(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_header_body_signature, input: self)
}

public static func headerBodySlot(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_header_body_slot, input: self)
}

public static func headerBodySlotBignum(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_header_body_slot_bignum, input: self)
}

public static func headerBodyToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_header_body_to_bytes, input: self)
}

public static func headerBodyToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_header_body_to_hex, input: self)
}

public static func headerBodyToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_header_body_to_json, input: self)
}

public static func headerBodyVrfResultOrNothing(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_header_body_vrf_result_or_nothing, input: self)
}

public static func headerBodyVrfVkey(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_header_body_vrf_vkey, input: self)
}

public static func headerFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_header_from_hex, input: input)
}

public static func headerFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_header_from_json, input: input)
}

public static func headerHeaderBody(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_header_header_body, input: self)
}

public static func headerNew(headerbody: OpaqueRustPointer<HeaderBody>, bodysignature: OpaqueRustPointer<BodySignature>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_header_new, input1: headerbody, input2: bodysignature)
}

public static func headerToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_header_to_bytes, input: self)
}

public static func headerToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_header_to_hex, input: self)
}

public static func headerToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_header_to_json, input: self)
}

public static func infoActionNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_info_action_new)
}

public static func intAsI32(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_int_as_i32, input: self)
}

public static func intAsI32OrFail(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_int_as_i32_or_fail, input: self)
}

public static func intAsI32OrNothing(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_int_as_i32_or_nothing, input: self)
}

public static func intAsNegative(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_int_as_negative, input: self)
}

public static func intAsPositive(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_int_as_positive, input: self)
}

public static func intFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_int_from_hex, input: input)
}

public static func intFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_int_from_json, input: input)
}

public static func intFromStr(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_int_from_str, input: input)
}

public static func intIsPositive(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_int_is_positive, input: self)
}

public static func intNew(x: OpaqueRustPointer<X>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_int_new, input: x)
}

public static func intNewNegative(x: OpaqueRustPointer<X>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_int_new_negative, input: x)
}

public static func intToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_int_to_bytes, input: self)
}

public static func intToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_int_to_hex, input: self)
}

public static func intToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_int_to_json, input: self)
}

public static func intToStr(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_int_to_str, input: self)
}

public static func ipv4FromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_ipv4_from_hex, input: input)
}

public static func ipv4FromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_ipv4_from_json, input: input)
}

public static func ipv4Ip(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_ipv4_ip, input: self)
}

public static func ipv4ToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_ipv4_to_bytes, input: self)
}

public static func ipv4ToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_ipv4_to_hex, input: self)
}

public static func ipv4ToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_ipv4_to_json, input: self)
}

public static func ipv6FromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_ipv6_from_hex, input: input)
}

public static func ipv6FromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_ipv6_from_json, input: input)
}

public static func ipv6Ip(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_ipv6_ip, input: self)
}

public static func ipv6ToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_ipv6_to_bytes, input: self)
}

public static func ipv6ToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_ipv6_to_hex, input: self)
}

public static func ipv6ToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_ipv6_to_json, input: self)
}

public static func kESSignatureToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_k_e_s_signature_to_bytes, input: self)
}

public static func kESVKeyFromBech32(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_k_e_s_v_key_from_bech32, input: input)
}

public static func kESVKeyFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_k_e_s_v_key_from_hex, input: input)
}

public static func kESVKeyToBech32(self: OpaqueRustPointer<Self>, string2: String) throws -> String {
    return try callRustFunctionRPtrAndString(csl_bridge_k_e_s_v_key_to_bech32, input: self, string: string2)
}

public static func kESVKeyToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_k_e_s_v_key_to_bytes, input: self)
}

public static func kESVKeyToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_k_e_s_v_key_to_hex, input: self)
}

public static func languageFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_language_from_hex, input: input)
}

public static func languageFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_language_from_json, input: input)
}

public static func languageKind(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_language_kind, input: self)
}

public static func languageNewPlutusV1() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_language_new_plutus_v1)
}

public static func languageNewPlutusV2() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_language_new_plutus_v2)
}

public static func languageNewPlutusV3() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_language_new_plutus_v3)
}

public static func languageToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_language_to_bytes, input: self)
}

public static func languageToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_language_to_hex, input: self)
}

public static func languageToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_language_to_json, input: self)
}

public static func languagesAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_languages_add
}

public static func languagesGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_languages_get
}

public static func languagesLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_languages_len, input: self)
}

public static func languagesList() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_languages_list)
}

public static func languagesNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_languages_new)
}

public static func legacyDaedalusPrivateKeyAsBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_legacy_daedalus_private_key_as_bytes, input: self)
}

public static func legacyDaedalusPrivateKeyChaincode(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_legacy_daedalus_private_key_chaincode, input: self)
}

public static func linearFeeCoefficient(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_linear_fee_coefficient, input: self)
}

public static func linearFeeConstant(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_linear_fee_constant, input: self)
}

public static func linearFeeNew(coefficient: OpaqueRustPointer<Coefficient>, constant: OpaqueRustPointer<Constant>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_linear_fee_new, input1: coefficient, input2: constant)
}

public static func mIRToStakeCredentialsFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_m_i_r_to_stake_credentials_from_hex, input: input)
}

public static func mIRToStakeCredentialsFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_m_i_r_to_stake_credentials_from_json, input: input)
}

public static func mIRToStakeCredentialsGet(self: OpaqueRustPointer<Self>, cred: OpaqueRustPointer<Cred>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_m_i_r_to_stake_credentials_get, input1: self, input2: cred)
}

public static func mIRToStakeCredentialsKeys(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_m_i_r_to_stake_credentials_keys, input: self)
}

public static func mIRToStakeCredentialsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_m_i_r_to_stake_credentials_len, input: self)
}

public static func mIRToStakeCredentialsNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_m_i_r_to_stake_credentials_new)
}

public static func mIRToStakeCredentialsToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_m_i_r_to_stake_credentials_to_bytes, input: self)
}

public static func mIRToStakeCredentialsToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_m_i_r_to_stake_credentials_to_hex, input: self)
}

public static func mIRToStakeCredentialsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_m_i_r_to_stake_credentials_to_json, input: self)
}

public static func makeVkeyWitness(hash: OpaqueRustPointer<Hash>, sk: OpaqueRustPointer<Sk>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_make_vkey_witness, input1: hash, input2: sk)
}

public static func malformedAddressFromAddress(addr: OpaqueRustPointer<Addr>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_malformed_address_from_address, input: addr)
}

public static func malformedAddressOriginalBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_malformed_address_original_bytes, input: self)
}

public static func malformedAddressToAddress(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_malformed_address_to_address, input: self)
}

public static func metadataListAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_metadata_list_add
}

public static func metadataListFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_metadata_list_from_hex, input: input)
}

public static func metadataListGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_metadata_list_get
}

public static func metadataListLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_metadata_list_len, input: self)
}

public static func metadataListNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_metadata_list_new)
}

public static func metadataListToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_metadata_list_to_bytes, input: self)
}

public static func metadataListToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_metadata_list_to_hex, input: self)
}

public static func metadataMapFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_metadata_map_from_hex, input: input)
}

public static func metadataMapGet(self: OpaqueRustPointer<Self>, key: OpaqueRustPointer<Key>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_metadata_map_get, input1: self, input2: key)
}

public static func metadataMapGetI32(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_metadata_map_get_i32
}

public static func metadataMapGetStr(self: OpaqueRustPointer<Self>, string2: String) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_string_to_rptr for csl_bridge_metadata_map_get_str
}

public static func metadataMapHas(self: OpaqueRustPointer<Self>, key: OpaqueRustPointer<Key>) throws -> Bool {
    return try callRustFunctionTwoRPtrsForBool(csl_bridge_metadata_map_has, input1: self, input2: key)
}

public static func metadataMapKeys(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_metadata_map_keys, input: self)
}

public static func metadataMapLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_metadata_map_len, input: self)
}

public static func metadataMapNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_metadata_map_new)
}

public static func metadataMapToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_metadata_map_to_bytes, input: self)
}

public static func metadataMapToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_metadata_map_to_hex, input: self)
}

public static func minAdaForOutput(output: OpaqueRustPointer<Output>, datacost: OpaqueRustPointer<DataCost>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_min_ada_for_output, input1: output, input2: datacost)
}

public static func minFee(tx: OpaqueRustPointer<Tx>, fee: OpaqueRustPointer<Fee>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_min_fee, input1: tx, input2: fee)
}

public static func minScriptFee(tx: OpaqueRustPointer<Tx>, exunitprices: OpaqueRustPointer<ExUnitPrices>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_min_script_fee, input1: tx, input2: exunitprices)
}

public static func mintAsNegativeMultiasset(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_mint_as_negative_multiasset, input: self)
}

public static func mintAsPositiveMultiasset(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_mint_as_positive_multiasset, input: self)
}

public static func mintAssetsGet(self: OpaqueRustPointer<Self>, key: OpaqueRustPointer<Key>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_mint_assets_get, input1: self, input2: key)
}

public static func mintAssetsKeys(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_mint_assets_keys, input: self)
}

public static func mintAssetsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_mint_assets_len, input: self)
}

public static func mintAssetsNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_mint_assets_new)
}

public static func mintAssetsNewFromEntry(key: OpaqueRustPointer<Key>, value: OpaqueRustPointer<Value>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_mint_assets_new_from_entry, input1: key, input2: value)
}

public static func mintBuilderBuild(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_mint_builder_build, input: self)
}

public static func mintBuilderGetNativeScripts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_mint_builder_get_native_scripts, input: self)
}

public static func mintBuilderGetPlutusWitnesses(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_mint_builder_get_plutus_witnesses, input: self)
}

public static func mintBuilderGetRedeemers(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_mint_builder_get_redeemers, input: self)
}

public static func mintBuilderGetRefInputs(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_mint_builder_get_ref_inputs, input: self)
}

public static func mintBuilderHasNativeScripts(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_mint_builder_has_native_scripts, input: self)
}

public static func mintBuilderHasPlutusScripts(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_mint_builder_has_plutus_scripts, input: self)
}

public static func mintBuilderNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_mint_builder_new)
}

public static func mintFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_mint_from_hex, input: input)
}

public static func mintFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_mint_from_json, input: input)
}

public static func mintGet(self: OpaqueRustPointer<Self>, key: OpaqueRustPointer<Key>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_mint_get, input1: self, input2: key)
}

public static func mintKeys(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_mint_keys, input: self)
}

public static func mintLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_mint_len, input: self)
}

public static func mintNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_mint_new)
}

public static func mintNewFromEntry(key: OpaqueRustPointer<Key>, value: OpaqueRustPointer<Value>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_mint_new_from_entry, input1: key, input2: value)
}

public static func mintToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_mint_to_bytes, input: self)
}

public static func mintToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_mint_to_hex, input: self)
}

public static func mintToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_mint_to_json, input: self)
}

public static func mintWitnessNewNativeScript(script: OpaqueRustPointer<Script>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_mint_witness_new_native_script, input: script)
}

public static func mintWitnessNewPlutusScript(script: OpaqueRustPointer<Script>, redeemer: OpaqueRustPointer<Redeemer>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_mint_witness_new_plutus_script, input1: script, input2: redeemer)
}

public static func mintsAssetsAdd(asset: OpaqueRustPointer<Asset>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_mints_assets_add
}

public static func mintsAssetsFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_mints_assets_from_json, input: input)
}

public static func mintsAssetsGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_mints_assets_get
}

public static func mintsAssetsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_mints_assets_len, input: self)
}

public static func mintsAssetsNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_mints_assets_new)
}

public static func mintsAssetsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_mints_assets_to_json, input: self)
}

public static func moveInstantaneousRewardAsToOtherPot(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_move_instantaneous_reward_as_to_other_pot, input: self)
}

public static func moveInstantaneousRewardAsToStakeCreds(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_move_instantaneous_reward_as_to_stake_creds, input: self)
}

public static func moveInstantaneousRewardFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_move_instantaneous_reward_from_hex, input: input)
}

public static func moveInstantaneousRewardFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_move_instantaneous_reward_from_json, input: input)
}

public static func moveInstantaneousRewardKind(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_move_instantaneous_reward_kind, input: self)
}

public static func moveInstantaneousRewardPot(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_move_instantaneous_reward_pot, input: self)
}

public static func moveInstantaneousRewardToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_move_instantaneous_reward_to_bytes, input: self)
}

public static func moveInstantaneousRewardToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_move_instantaneous_reward_to_hex, input: self)
}

public static func moveInstantaneousRewardToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_move_instantaneous_reward_to_json, input: self)
}

public static func moveInstantaneousRewardsCertFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_move_instantaneous_rewards_cert_from_hex, input: input)
}

public static func moveInstantaneousRewardsCertFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_move_instantaneous_rewards_cert_from_json, input: input)
}

public static func moveInstantaneousRewardsCertMoveInstantaneousReward(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_move_instantaneous_rewards_cert_move_instantaneous_reward, input: self)
}

public static func moveInstantaneousRewardsCertNew(reward: OpaqueRustPointer<Reward>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_move_instantaneous_rewards_cert_new, input: reward)
}

public static func moveInstantaneousRewardsCertToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_move_instantaneous_rewards_cert_to_bytes, input: self)
}

public static func moveInstantaneousRewardsCertToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_move_instantaneous_rewards_cert_to_hex, input: self)
}

public static func moveInstantaneousRewardsCertToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_move_instantaneous_rewards_cert_to_json, input: self)
}

public static func multiAssetFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_multi_asset_from_hex, input: input)
}

public static func multiAssetFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_multi_asset_from_json, input: input)
}

public static func multiAssetGet(self: OpaqueRustPointer<Self>, policyid: OpaqueRustPointer<PolicyId>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_multi_asset_get, input1: self, input2: policyid)
}

public static func multiAssetKeys(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_multi_asset_keys, input: self)
}

public static func multiAssetLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_multi_asset_len, input: self)
}

public static func multiAssetNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_multi_asset_new)
}

public static func multiAssetSub(self: OpaqueRustPointer<Self>, rhsma: OpaqueRustPointer<RhsMa>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_multi_asset_sub, input1: self, input2: rhsma)
}

public static func multiAssetToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_multi_asset_to_bytes, input: self)
}

public static func multiAssetToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_multi_asset_to_hex, input: self)
}

public static func multiAssetToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_multi_asset_to_json, input: self)
}

public static func multiHostNameDnsName(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_multi_host_name_dns_name, input: self)
}

public static func multiHostNameFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_multi_host_name_from_hex, input: input)
}

public static func multiHostNameFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_multi_host_name_from_json, input: input)
}

public static func multiHostNameNew(dnsname: OpaqueRustPointer<DnsName>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_multi_host_name_new, input: dnsname)
}

public static func multiHostNameToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_multi_host_name_to_bytes, input: self)
}

public static func multiHostNameToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_multi_host_name_to_hex, input: self)
}

public static func multiHostNameToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_multi_host_name_to_json, input: self)
}

public static func nativeScriptAsScriptAll(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_native_script_as_script_all, input: self)
}

public static func nativeScriptAsScriptAny(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_native_script_as_script_any, input: self)
}

public static func nativeScriptAsScriptNOfK(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_native_script_as_script_n_of_k, input: self)
}

public static func nativeScriptAsScriptPubkey(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_native_script_as_script_pubkey, input: self)
}

public static func nativeScriptAsTimelockExpiry(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_native_script_as_timelock_expiry, input: self)
}

public static func nativeScriptAsTimelockStart(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_native_script_as_timelock_start, input: self)
}

public static func nativeScriptFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_native_script_from_hex, input: input)
}

public static func nativeScriptFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_native_script_from_json, input: input)
}

public static func nativeScriptGetRequiredSigners(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_native_script_get_required_signers, input: self)
}

public static func nativeScriptHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_native_script_hash, input: self)
}

public static func nativeScriptKind(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_native_script_kind, input: self)
}

public static func nativeScriptNewScriptAll(script: OpaqueRustPointer<Script>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_native_script_new_script_all, input: script)
}

public static func nativeScriptNewScriptAny(script: OpaqueRustPointer<Script>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_native_script_new_script_any, input: script)
}

public static func nativeScriptNewScriptNOfK(script: OpaqueRustPointer<Script>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_native_script_new_script_n_of_k, input: script)
}

public static func nativeScriptNewScriptPubkey(key: OpaqueRustPointer<Key>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_native_script_new_script_pubkey, input: key)
}

public static func nativeScriptNewTimelockExpiry(timelockexpiry: OpaqueRustPointer<TimelockExpiry>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_native_script_new_timelock_expiry, input: timelockexpiry)
}

public static func nativeScriptNewTimelockStart(timelockstart: OpaqueRustPointer<TimelockStart>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_native_script_new_timelock_start, input: timelockstart)
}

public static func nativeScriptSourceGetRefScriptSize(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_native_script_source_get_ref_script_size, input: self)
}

public static func nativeScriptSourceNew(script: OpaqueRustPointer<Script>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_native_script_source_new, input: script)
}

public static func nativeScriptSourceSetRequiredSigners(key: OpaqueRustPointer<Key>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_native_script_source_set_required_signers
}

public static func nativeScriptToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_native_script_to_bytes, input: self)
}

public static func nativeScriptToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_native_script_to_hex, input: self)
}

public static func nativeScriptToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_native_script_to_json, input: self)
}

public static func nativeScriptsAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_native_scripts_add
}

public static func nativeScriptsFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_native_scripts_from_hex, input: input)
}

public static func nativeScriptsFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_native_scripts_from_json, input: input)
}

public static func nativeScriptsGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_native_scripts_get
}

public static func nativeScriptsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_native_scripts_len, input: self)
}

public static func nativeScriptsNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_native_scripts_new)
}

public static func nativeScriptsToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_native_scripts_to_bytes, input: self)
}

public static func nativeScriptsToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_native_scripts_to_hex, input: self)
}

public static func nativeScriptsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_native_scripts_to_json, input: self)
}

public static func networkIdFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_network_id_from_hex, input: input)
}

public static func networkIdFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_network_id_from_json, input: input)
}

public static func networkIdKind(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_network_id_kind, input: self)
}

public static func networkIdMainnet() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_network_id_mainnet)
}

public static func networkIdTestnet() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_network_id_testnet)
}

public static func networkIdToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_network_id_to_bytes, input: self)
}

public static func networkIdToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_network_id_to_hex, input: self)
}

public static func networkIdToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_network_id_to_json, input: self)
}

public static func networkInfoMainnet() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_network_info_mainnet)
}

public static func networkInfoNetworkId(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_network_info_network_id, input: self)
}

public static func networkInfoProtocolMagic(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_network_info_protocol_magic, input: self)
}

public static func networkInfoTestnetPreprod() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_network_info_testnet_preprod)
}

public static func networkInfoTestnetPreview() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_network_info_testnet_preview)
}

public static func newConstitutionActionConstitution(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_new_constitution_action_constitution, input: self)
}

public static func newConstitutionActionFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_new_constitution_action_from_hex, input: input)
}

public static func newConstitutionActionFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_new_constitution_action_from_json, input: input)
}

public static func newConstitutionActionGovActionId(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_new_constitution_action_gov_action_id, input: self)
}

public static func newConstitutionActionHasScriptHash(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_new_constitution_action_has_script_hash, input: self)
}

public static func newConstitutionActionNew(constitution: OpaqueRustPointer<Constitution>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_new_constitution_action_new, input: constitution)
}

public static func newConstitutionActionNewWithActionId(govactionid: OpaqueRustPointer<GovActionId>, constitution: OpaqueRustPointer<Constitution>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_new_constitution_action_new_with_action_id, input1: govactionid, input2: constitution)
}

public static func newConstitutionActionToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_new_constitution_action_to_bytes, input: self)
}

public static func newConstitutionActionToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_new_constitution_action_to_hex, input: self)
}

public static func newConstitutionActionToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_new_constitution_action_to_json, input: self)
}

public static func noConfidenceActionFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_no_confidence_action_from_hex, input: input)
}

public static func noConfidenceActionFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_no_confidence_action_from_json, input: input)
}

public static func noConfidenceActionGovActionId(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_no_confidence_action_gov_action_id, input: self)
}

public static func noConfidenceActionNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_no_confidence_action_new)
}

public static func noConfidenceActionNewWithActionId(govactionid: OpaqueRustPointer<GovActionId>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_no_confidence_action_new_with_action_id, input: govactionid)
}

public static func noConfidenceActionToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_no_confidence_action_to_bytes, input: self)
}

public static func noConfidenceActionToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_no_confidence_action_to_hex, input: self)
}

public static func noConfidenceActionToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_no_confidence_action_to_json, input: self)
}

public static func nonceFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_nonce_from_hex, input: input)
}

public static func nonceFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_nonce_from_json, input: input)
}

public static func nonceGetHash(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_nonce_get_hash, input: self)
}

public static func nonceNewIdentity() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_nonce_new_identity)
}

public static func nonceToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_nonce_to_bytes, input: self)
}

public static func nonceToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_nonce_to_hex, input: self)
}

public static func nonceToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_nonce_to_json, input: self)
}

public static func operationalCertFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_operational_cert_from_hex, input: input)
}

public static func operationalCertFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_operational_cert_from_json, input: input)
}

public static func operationalCertHotVkey(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_operational_cert_hot_vkey, input: self)
}

public static func operationalCertKesPeriod(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_operational_cert_kes_period, input: self)
}

public static func operationalCertSequenceNumber(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_operational_cert_sequence_number, input: self)
}

public static func operationalCertSigma(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_operational_cert_sigma, input: self)
}

public static func operationalCertToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_operational_cert_to_bytes, input: self)
}

public static func operationalCertToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_operational_cert_to_hex, input: self)
}

public static func operationalCertToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_operational_cert_to_json, input: self)
}

public static func outputDatumData(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_output_datum_data, input: self)
}

public static func outputDatumDataHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_output_datum_data_hash, input: self)
}

public static func outputDatumNewData(data: OpaqueRustPointer<Data>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_output_datum_new_data, input: data)
}

public static func outputDatumNewDataHash(hash: OpaqueRustPointer<Hash>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_output_datum_new_data_hash, input: hash)
}

public static func parameterChangeActionFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_parameter_change_action_from_hex, input: input)
}

public static func parameterChangeActionFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_parameter_change_action_from_json, input: input)
}

public static func parameterChangeActionGovActionId(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_parameter_change_action_gov_action_id, input: self)
}

public static func parameterChangeActionNew(protocolparamupdates: OpaqueRustPointer<ProtocolParamUpdates>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_parameter_change_action_new, input: protocolparamupdates)
}

public static func parameterChangeActionNewWithActionId(govactionid: OpaqueRustPointer<GovActionId>, protocolparamupdates: OpaqueRustPointer<ProtocolParamUpdates>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_parameter_change_action_new_with_action_id, input1: govactionid, input2: protocolparamupdates)
}

public static func parameterChangeActionNewWithPolicyHash(protocolparamupdates: OpaqueRustPointer<ProtocolParamUpdates>, hash: OpaqueRustPointer<Hash>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_parameter_change_action_new_with_policy_hash, input1: protocolparamupdates, input2: hash)
}

public static func parameterChangeActionPolicyHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_parameter_change_action_policy_hash, input: self)
}

public static func parameterChangeActionProtocolParamUpdates(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_parameter_change_action_protocol_param_updates, input: self)
}

public static func parameterChangeActionToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_parameter_change_action_to_bytes, input: self)
}

public static func parameterChangeActionToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_parameter_change_action_to_hex, input: self)
}

public static func parameterChangeActionToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_parameter_change_action_to_json, input: self)
}

public static func plutusDataAsAddress(self: OpaqueRustPointer<Self>, network: OpaqueRustPointer<Network>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_plutus_data_as_address, input1: self, input2: network)
}

public static func plutusDataAsBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_plutus_data_as_bytes, input: self)
}

public static func plutusDataAsConstrPlutusData(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_plutus_data_as_constr_plutus_data, input: self)
}

public static func plutusDataAsInteger(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_plutus_data_as_integer, input: self)
}

public static func plutusDataAsList(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_plutus_data_as_list, input: self)
}

public static func plutusDataAsMap(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_plutus_data_as_map, input: self)
}

public static func plutusDataFromAddress(address: OpaqueRustPointer<Address>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_plutus_data_from_address, input: address)
}

public static func plutusDataFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_plutus_data_from_hex, input: input)
}

public static func plutusDataKind(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_plutus_data_kind, input: self)
}

public static func plutusDataNewConstrPlutusData(constrplutusdata: OpaqueRustPointer<ConstrPlutusData>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_plutus_data_new_constr_plutus_data, input: constrplutusdata)
}

public static func plutusDataNewEmptyConstrPlutusData(alternative: OpaqueRustPointer<Alternative>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_plutus_data_new_empty_constr_plutus_data, input: alternative)
}

public static func plutusDataNewInteger(integer: OpaqueRustPointer<Integer>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_plutus_data_new_integer, input: integer)
}

public static func plutusDataNewList(list: OpaqueRustPointer<List>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_plutus_data_new_list, input: list)
}

public static func plutusDataNewMap(map: OpaqueRustPointer<Map>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_plutus_data_new_map, input: map)
}

public static func plutusDataNewSingleValueConstrPlutusData(alternative: OpaqueRustPointer<Alternative>, plutusdata: OpaqueRustPointer<PlutusData>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_plutus_data_new_single_value_constr_plutus_data, input1: alternative, input2: plutusdata)
}

public static func plutusDataToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_plutus_data_to_bytes, input: self)
}

public static func plutusDataToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_plutus_data_to_hex, input: self)
}

public static func plutusListAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_plutus_list_add
}

public static func plutusListFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_plutus_list_from_hex, input: input)
}

public static func plutusListGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_plutus_list_get
}

public static func plutusListLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_plutus_list_len, input: self)
}

public static func plutusListNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_plutus_list_new)
}

public static func plutusListToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_plutus_list_to_bytes, input: self)
}

public static func plutusListToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_plutus_list_to_hex, input: self)
}

public static func plutusMapFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_plutus_map_from_hex, input: input)
}

public static func plutusMapGet(self: OpaqueRustPointer<Self>, key: OpaqueRustPointer<Key>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_plutus_map_get, input1: self, input2: key)
}

public static func plutusMapKeys(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_plutus_map_keys, input: self)
}

public static func plutusMapLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_plutus_map_len, input: self)
}

public static func plutusMapNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_plutus_map_new)
}

public static func plutusMapToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_plutus_map_to_bytes, input: self)
}

public static func plutusMapToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_plutus_map_to_hex, input: self)
}

public static func plutusMapValuesAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_plutus_map_values_add
}

public static func plutusMapValuesGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_plutus_map_values_get
}

public static func plutusMapValuesLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_plutus_map_values_len, input: self)
}

public static func plutusMapValuesNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_plutus_map_values_new)
}

public static func plutusScriptBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_plutus_script_bytes, input: self)
}

public static func plutusScriptFromBytesWithVersion(data: Data) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionWithData(csl_bridge_plutus_script_from_bytes_with_version, input: data)
}

public static func plutusScriptFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_plutus_script_from_hex, input: input)
}

public static func plutusScriptHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_plutus_script_hash, input: self)
}

public static func plutusScriptLanguageVersion(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_plutus_script_language_version, input: self)
}

public static func plutusScriptNewWithVersion(data: Data) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionWithData(csl_bridge_plutus_script_new_with_version, input: data)
}

public static func plutusScriptSourceGetRefScriptSize(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_plutus_script_source_get_ref_script_size, input: self)
}

public static func plutusScriptSourceNew(script: OpaqueRustPointer<Script>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_plutus_script_source_new, input: script)
}

public static func plutusScriptSourceSetRequiredSigners(key: OpaqueRustPointer<Key>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_plutus_script_source_set_required_signers
}

public static func plutusScriptToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_plutus_script_to_bytes, input: self)
}

public static func plutusScriptToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_plutus_script_to_hex, input: self)
}

public static func plutusScriptsAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_plutus_scripts_add
}

public static func plutusScriptsFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_plutus_scripts_from_hex, input: input)
}

public static func plutusScriptsFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_plutus_scripts_from_json, input: input)
}

public static func plutusScriptsGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_plutus_scripts_get
}

public static func plutusScriptsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_plutus_scripts_len, input: self)
}

public static func plutusScriptsNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_plutus_scripts_new)
}

public static func plutusScriptsToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_plutus_scripts_to_bytes, input: self)
}

public static func plutusScriptsToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_plutus_scripts_to_hex, input: self)
}

public static func plutusScriptsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_plutus_scripts_to_json, input: self)
}

public static func plutusWitnessDatum(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_plutus_witness_datum, input: self)
}

public static func plutusWitnessNewWithRefWithoutDatum(script: OpaqueRustPointer<Script>, redeemer: OpaqueRustPointer<Redeemer>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_plutus_witness_new_with_ref_without_datum, input1: script, input2: redeemer)
}

public static func plutusWitnessNewWithoutDatum(script: OpaqueRustPointer<Script>, redeemer: OpaqueRustPointer<Redeemer>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_plutus_witness_new_without_datum, input1: script, input2: redeemer)
}

public static func plutusWitnessRedeemer(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_plutus_witness_redeemer, input: self)
}

public static func plutusWitnessScript(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_plutus_witness_script, input: self)
}

public static func plutusWitnessesAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_plutus_witnesses_add
}

public static func plutusWitnessesGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_plutus_witnesses_get
}

public static func plutusWitnessesLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_plutus_witnesses_len, input: self)
}

public static func plutusWitnessesNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_plutus_witnesses_new)
}

public static func pointerAddressFromAddress(addr: OpaqueRustPointer<Addr>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pointer_address_from_address, input: addr)
}

public static func pointerAddressNetworkId(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_pointer_address_network_id, input: self)
}

public static func pointerAddressPaymentCred(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pointer_address_payment_cred, input: self)
}

public static func pointerAddressStakePointer(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pointer_address_stake_pointer, input: self)
}

public static func pointerAddressToAddress(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pointer_address_to_address, input: self)
}

public static func pointerCertIndex(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_pointer_cert_index, input: self)
}

public static func pointerCertIndexBignum(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pointer_cert_index_bignum, input: self)
}

public static func pointerSlot(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_pointer_slot, input: self)
}

public static func pointerSlotBignum(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pointer_slot_bignum, input: self)
}

public static func pointerTxIndex(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_pointer_tx_index, input: self)
}

public static func pointerTxIndexBignum(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pointer_tx_index_bignum, input: self)
}

public static func poolMetadataFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_pool_metadata_from_hex, input: input)
}

public static func poolMetadataFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_pool_metadata_from_json, input: input)
}

public static func poolMetadataHashFromBech32(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_pool_metadata_hash_from_bech32, input: input)
}

public static func poolMetadataHashFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_pool_metadata_hash_from_hex, input: input)
}

public static func poolMetadataHashToBech32(self: OpaqueRustPointer<Self>, string2: String) throws -> String {
    return try callRustFunctionRPtrAndString(csl_bridge_pool_metadata_hash_to_bech32, input: self, string: string2)
}

public static func poolMetadataHashToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_pool_metadata_hash_to_bytes, input: self)
}

public static func poolMetadataHashToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_pool_metadata_hash_to_hex, input: self)
}

public static func poolMetadataNew(url: OpaqueRustPointer<Url>, hash: OpaqueRustPointer<Hash>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_pool_metadata_new, input1: url, input2: hash)
}

public static func poolMetadataPoolMetadataHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_metadata_pool_metadata_hash, input: self)
}

public static func poolMetadataToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_pool_metadata_to_bytes, input: self)
}

public static func poolMetadataToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_pool_metadata_to_hex, input: self)
}

public static func poolMetadataToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_pool_metadata_to_json, input: self)
}

public static func poolMetadataUrl(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_metadata_url, input: self)
}

public static func poolParamsCost(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_params_cost, input: self)
}

public static func poolParamsFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_pool_params_from_hex, input: input)
}

public static func poolParamsFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_pool_params_from_json, input: input)
}

public static func poolParamsMargin(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_params_margin, input: self)
}

public static func poolParamsOperator(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_params_operator, input: self)
}

public static func poolParamsPledge(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_params_pledge, input: self)
}

public static func poolParamsPoolMetadata(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_params_pool_metadata, input: self)
}

public static func poolParamsPoolOwners(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_params_pool_owners, input: self)
}

public static func poolParamsRelays(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_params_relays, input: self)
}

public static func poolParamsRewardAccount(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_params_reward_account, input: self)
}

public static func poolParamsToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_pool_params_to_bytes, input: self)
}

public static func poolParamsToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_pool_params_to_hex, input: self)
}

public static func poolParamsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_pool_params_to_json, input: self)
}

public static func poolParamsVrfKeyhash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_params_vrf_keyhash, input: self)
}

public static func poolRegistrationFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_pool_registration_from_hex, input: input)
}

public static func poolRegistrationFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_pool_registration_from_json, input: input)
}

public static func poolRegistrationNew(pool: OpaqueRustPointer<Pool>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_registration_new, input: pool)
}

public static func poolRegistrationPoolParams(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_registration_pool_params, input: self)
}

public static func poolRegistrationToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_pool_registration_to_bytes, input: self)
}

public static func poolRegistrationToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_pool_registration_to_hex, input: self)
}

public static func poolRegistrationToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_pool_registration_to_json, input: self)
}

public static func poolRetirementEpoch(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_pool_retirement_epoch, input: self)
}

public static func poolRetirementFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_pool_retirement_from_hex, input: input)
}

public static func poolRetirementFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_pool_retirement_from_json, input: input)
}

public static func poolRetirementNew(key: OpaqueRustPointer<Key>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_pool_retirement_new
}

public static func poolRetirementPoolKeyhash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_retirement_pool_keyhash, input: self)
}

public static func poolRetirementToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_pool_retirement_to_bytes, input: self)
}

public static func poolRetirementToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_pool_retirement_to_hex, input: self)
}

public static func poolRetirementToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_pool_retirement_to_json, input: self)
}

public static func poolVotingThresholdsCommitteeNoConfidence(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_voting_thresholds_committee_no_confidence, input: self)
}

public static func poolVotingThresholdsCommitteeNormal(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_voting_thresholds_committee_normal, input: self)
}

public static func poolVotingThresholdsFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_pool_voting_thresholds_from_hex, input: input)
}

public static func poolVotingThresholdsFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_pool_voting_thresholds_from_json, input: input)
}

public static func poolVotingThresholdsHardForkInitiation(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_voting_thresholds_hard_fork_initiation, input: self)
}

public static func poolVotingThresholdsMotionNoConfidence(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_voting_thresholds_motion_no_confidence, input: self)
}

public static func poolVotingThresholdsSecurityRelevantThreshold(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_pool_voting_thresholds_security_relevant_threshold, input: self)
}

public static func poolVotingThresholdsToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_pool_voting_thresholds_to_bytes, input: self)
}

public static func poolVotingThresholdsToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_pool_voting_thresholds_to_hex, input: self)
}

public static func poolVotingThresholdsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_pool_voting_thresholds_to_json, input: self)
}

public static func privateKeyAsBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_private_key_as_bytes, input: self)
}

public static func privateKeyFromBech32(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_private_key_from_bech32, input: input)
}

public static func privateKeyFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_private_key_from_hex, input: input)
}

public static func privateKeyGenerateEd25519() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_private_key_generate_ed25519)
}

public static func privateKeyGenerateEd25519extended() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_private_key_generate_ed25519extended)
}

public static func privateKeyToBech32(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_private_key_to_bech32, input: self)
}

public static func privateKeyToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_private_key_to_hex, input: self)
}

public static func privateKeyToPublic(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_private_key_to_public, input: self)
}

public static func proposedProtocolParameterUpdatesFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_proposed_protocol_parameter_updates_from_hex, input: input)
}

public static func proposedProtocolParameterUpdatesFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_proposed_protocol_parameter_updates_from_json, input: input)
}

public static func proposedProtocolParameterUpdatesGet(self: OpaqueRustPointer<Self>, key: OpaqueRustPointer<Key>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_proposed_protocol_parameter_updates_get, input1: self, input2: key)
}

public static func proposedProtocolParameterUpdatesKeys(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_proposed_protocol_parameter_updates_keys, input: self)
}

public static func proposedProtocolParameterUpdatesLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_proposed_protocol_parameter_updates_len, input: self)
}

public static func proposedProtocolParameterUpdatesNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_proposed_protocol_parameter_updates_new)
}

public static func proposedProtocolParameterUpdatesToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_proposed_protocol_parameter_updates_to_bytes, input: self)
}

public static func proposedProtocolParameterUpdatesToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_proposed_protocol_parameter_updates_to_hex, input: self)
}

public static func proposedProtocolParameterUpdatesToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_proposed_protocol_parameter_updates_to_json, input: self)
}

public static func protocolParamUpdateAdaPerUtxoByte(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_ada_per_utxo_byte, input: self)
}

public static func protocolParamUpdateCollateralPercentage(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_protocol_param_update_collateral_percentage, input: self)
}

public static func protocolParamUpdateCommitteeTermLimit(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_protocol_param_update_committee_term_limit, input: self)
}

public static func protocolParamUpdateCostModels(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_cost_models, input: self)
}

public static func protocolParamUpdateD(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_d, input: self)
}

public static func protocolParamUpdateDrepDeposit(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_drep_deposit, input: self)
}

public static func protocolParamUpdateDrepInactivityPeriod(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_protocol_param_update_drep_inactivity_period, input: self)
}

public static func protocolParamUpdateDrepVotingThresholds(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_drep_voting_thresholds, input: self)
}

public static func protocolParamUpdateExecutionCosts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_execution_costs, input: self)
}

public static func protocolParamUpdateExpansionRate(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_expansion_rate, input: self)
}

public static func protocolParamUpdateExtraEntropy(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_extra_entropy, input: self)
}

public static func protocolParamUpdateFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_protocol_param_update_from_hex, input: input)
}

public static func protocolParamUpdateFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_protocol_param_update_from_json, input: input)
}

public static func protocolParamUpdateGovernanceActionDeposit(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_governance_action_deposit, input: self)
}

public static func protocolParamUpdateGovernanceActionValidityPeriod(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_protocol_param_update_governance_action_validity_period, input: self)
}

public static func protocolParamUpdateKeyDeposit(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_key_deposit, input: self)
}

public static func protocolParamUpdateMaxBlockBodySize(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_protocol_param_update_max_block_body_size, input: self)
}

public static func protocolParamUpdateMaxBlockExUnits(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_max_block_ex_units, input: self)
}

public static func protocolParamUpdateMaxBlockHeaderSize(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_protocol_param_update_max_block_header_size, input: self)
}

public static func protocolParamUpdateMaxCollateralInputs(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_protocol_param_update_max_collateral_inputs, input: self)
}

public static func protocolParamUpdateMaxEpoch(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_protocol_param_update_max_epoch, input: self)
}

public static func protocolParamUpdateMaxTxExUnits(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_max_tx_ex_units, input: self)
}

public static func protocolParamUpdateMaxTxSize(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_protocol_param_update_max_tx_size, input: self)
}

public static func protocolParamUpdateMaxValueSize(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_protocol_param_update_max_value_size, input: self)
}

public static func protocolParamUpdateMinCommitteeSize(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_protocol_param_update_min_committee_size, input: self)
}

public static func protocolParamUpdateMinPoolCost(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_min_pool_cost, input: self)
}

public static func protocolParamUpdateMinfeeA(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_minfee_a, input: self)
}

public static func protocolParamUpdateMinfeeB(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_minfee_b, input: self)
}

public static func protocolParamUpdateNOpt(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_protocol_param_update_n_opt, input: self)
}

public static func protocolParamUpdateNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_protocol_param_update_new)
}

public static func protocolParamUpdatePoolDeposit(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_pool_deposit, input: self)
}

public static func protocolParamUpdatePoolPledgeInfluence(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_pool_pledge_influence, input: self)
}

public static func protocolParamUpdatePoolVotingThresholds(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_pool_voting_thresholds, input: self)
}

public static func protocolParamUpdateProtocolVersion(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_protocol_version, input: self)
}

public static func protocolParamUpdateRefScriptCoinsPerByte(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_ref_script_coins_per_byte, input: self)
}

public static func protocolParamUpdateSetAdaPerUtxoByte(utxo: OpaqueRustPointer<UTXO>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_ada_per_utxo_byte
}

public static func protocolParamUpdateSetCollateralPercentage(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_collateral_percentage
}

public static func protocolParamUpdateSetCommitteeTermLimit(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_committee_term_limit
}

public static func protocolParamUpdateSetCostModels(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_cost_models
}

public static func protocolParamUpdateSetDrepDeposit(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_drep_deposit
}

public static func protocolParamUpdateSetDrepInactivityPeriod(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_drep_inactivity_period
}

public static func protocolParamUpdateSetDrepVotingThresholds(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_drep_voting_thresholds
}

public static func protocolParamUpdateSetExecutionCosts(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_execution_costs
}

public static func protocolParamUpdateSetExpansionRate(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_expansion_rate
}

public static func protocolParamUpdateSetGovernanceActionDeposit(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_governance_action_deposit
}

public static func protocolParamUpdateSetGovernanceActionValidityPeriod(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_governance_action_validity_period
}

public static func protocolParamUpdateSetKeyDeposit(key: OpaqueRustPointer<Key>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_key_deposit
}

public static func protocolParamUpdateSetMaxBlockBodySize(block: OpaqueRustPointer<Block>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_max_block_body_size
}

public static func protocolParamUpdateSetMaxBlockExUnits(block: OpaqueRustPointer<Block>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_max_block_ex_units
}

public static func protocolParamUpdateSetMaxBlockHeaderSize(block: OpaqueRustPointer<Block>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_max_block_header_size
}

public static func protocolParamUpdateSetMaxCollateralInputs(input: OpaqueRustPointer<Input>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_max_collateral_inputs
}

public static func protocolParamUpdateSetMaxEpoch(epoch: OpaqueRustPointer<Epoch>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_max_epoch
}

public static func protocolParamUpdateSetMaxTxExUnits(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_max_tx_ex_units
}

public static func protocolParamUpdateSetMaxTxSize(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_max_tx_size
}

public static func protocolParamUpdateSetMaxValueSize(value: OpaqueRustPointer<Value>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_max_value_size
}

public static func protocolParamUpdateSetMinCommitteeSize(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_min_committee_size
}

public static func protocolParamUpdateSetMinPoolCost(pool: OpaqueRustPointer<Pool>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_min_pool_cost
}

public static func protocolParamUpdateSetMinfeeA(fee: OpaqueRustPointer<Fee>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_minfee_a
}

public static func protocolParamUpdateSetMinfeeB(fee: OpaqueRustPointer<Fee>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_minfee_b
}

public static func protocolParamUpdateSetNOpt(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_n_opt
}

public static func protocolParamUpdateSetPoolDeposit(pool: OpaqueRustPointer<Pool>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_pool_deposit
}

public static func protocolParamUpdateSetPoolPledgeInfluence(pool: OpaqueRustPointer<Pool>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_pool_pledge_influence
}

public static func protocolParamUpdateSetPoolVotingThresholds(pool: OpaqueRustPointer<Pool>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_pool_voting_thresholds
}

public static func protocolParamUpdateSetProtocolVersion(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_protocol_version
}

public static func protocolParamUpdateSetRefScriptCoinsPerByte(script: OpaqueRustPointer<Script>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_ref_script_coins_per_byte
}

public static func protocolParamUpdateSetTreasuryGrowthRate(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_protocol_param_update_set_treasury_growth_rate
}

public static func protocolParamUpdateToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_protocol_param_update_to_bytes, input: self)
}

public static func protocolParamUpdateToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_protocol_param_update_to_hex, input: self)
}

public static func protocolParamUpdateToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_protocol_param_update_to_json, input: self)
}

public static func protocolParamUpdateTreasuryGrowthRate(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_protocol_param_update_treasury_growth_rate, input: self)
}

public static func protocolVersionFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_protocol_version_from_hex, input: input)
}

public static func protocolVersionFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_protocol_version_from_json, input: input)
}

public static func protocolVersionMajor(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_protocol_version_major, input: self)
}

public static func protocolVersionMinor(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_protocol_version_minor, input: self)
}

public static func protocolVersionToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_protocol_version_to_bytes, input: self)
}

public static func protocolVersionToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_protocol_version_to_hex, input: self)
}

public static func protocolVersionToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_protocol_version_to_json, input: self)
}

public static func publicKeyAsBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_public_key_as_bytes, input: self)
}

public static func publicKeyFromBech32(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_public_key_from_bech32, input: input)
}

public static func publicKeyFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_public_key_from_hex, input: input)
}

public static func publicKeyHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_public_key_hash, input: self)
}

public static func publicKeyToBech32(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_public_key_to_bech32, input: self)
}

public static func publicKeyToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_public_key_to_hex, input: self)
}

public static func publicKeysAdd(key: OpaqueRustPointer<Key>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_public_keys_add
}

public static func publicKeysGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_public_keys_get
}

public static func publicKeysNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_public_keys_new)
}

public static func publicKeysSize(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_public_keys_size, input: self)
}

public static func redeemerData(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_redeemer_data, input: self)
}

public static func redeemerExUnits(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_redeemer_ex_units, input: self)
}

public static func redeemerFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_redeemer_from_hex, input: input)
}

public static func redeemerFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_redeemer_from_json, input: input)
}

public static func redeemerIndex(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_redeemer_index, input: self)
}

public static func redeemerTag(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_redeemer_tag, input: self)
}

public static func redeemerTagFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_redeemer_tag_from_hex, input: input)
}

public static func redeemerTagFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_redeemer_tag_from_json, input: input)
}

public static func redeemerTagKind(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_redeemer_tag_kind, input: self)
}

public static func redeemerTagNewCert() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_redeemer_tag_new_cert)
}

public static func redeemerTagNewMint() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_redeemer_tag_new_mint)
}

public static func redeemerTagNewReward() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_redeemer_tag_new_reward)
}

public static func redeemerTagNewSpend() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_redeemer_tag_new_spend)
}

public static func redeemerTagNewVote() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_redeemer_tag_new_vote)
}

public static func redeemerTagNewVotingProposal() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_redeemer_tag_new_voting_proposal)
}

public static func redeemerTagToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_redeemer_tag_to_bytes, input: self)
}

public static func redeemerTagToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_redeemer_tag_to_hex, input: self)
}

public static func redeemerTagToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_redeemer_tag_to_json, input: self)
}

public static func redeemerToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_redeemer_to_bytes, input: self)
}

public static func redeemerToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_redeemer_to_hex, input: self)
}

public static func redeemerToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_redeemer_to_json, input: self)
}

public static func redeemersAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_redeemers_add
}

public static func redeemersFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_redeemers_from_hex, input: input)
}

public static func redeemersFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_redeemers_from_json, input: input)
}

public static func redeemersGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_redeemers_get
}

public static func redeemersGetContainerType(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_redeemers_get_container_type, input: self)
}

public static func redeemersLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_redeemers_len, input: self)
}

public static func redeemersNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_redeemers_new)
}

public static func redeemersToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_redeemers_to_bytes, input: self)
}

public static func redeemersToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_redeemers_to_hex, input: self)
}

public static func redeemersToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_redeemers_to_json, input: self)
}

public static func redeemersTotalExUnits(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_redeemers_total_ex_units, input: self)
}

public static func relayAsMultiHostName(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_relay_as_multi_host_name, input: self)
}

public static func relayAsSingleHostAddr(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_relay_as_single_host_addr, input: self)
}

public static func relayAsSingleHostName(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_relay_as_single_host_name, input: self)
}

public static func relayFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_relay_from_hex, input: input)
}

public static func relayFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_relay_from_json, input: input)
}

public static func relayKind(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_relay_kind, input: self)
}

public static func relayNewMultiHostName(multihostname: OpaqueRustPointer<MultiHostName>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_relay_new_multi_host_name, input: multihostname)
}

public static func relayNewSingleHostAddr(singlehostaddr: OpaqueRustPointer<SingleHostAddr>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_relay_new_single_host_addr, input: singlehostaddr)
}

public static func relayNewSingleHostName(singlehostname: OpaqueRustPointer<SingleHostName>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_relay_new_single_host_name, input: singlehostname)
}

public static func relayToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_relay_to_bytes, input: self)
}

public static func relayToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_relay_to_hex, input: self)
}

public static func relayToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_relay_to_json, input: self)
}

public static func relaysAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_relays_add
}

public static func relaysFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_relays_from_hex, input: input)
}

public static func relaysFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_relays_from_json, input: input)
}

public static func relaysGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_relays_get
}

public static func relaysLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_relays_len, input: self)
}

public static func relaysNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_relays_new)
}

public static func relaysToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_relays_to_bytes, input: self)
}

public static func relaysToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_relays_to_hex, input: self)
}

public static func relaysToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_relays_to_json, input: self)
}

public static func rewardAddressFromAddress(addr: OpaqueRustPointer<Addr>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_reward_address_from_address, input: addr)
}

public static func rewardAddressNetworkId(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_reward_address_network_id, input: self)
}

public static func rewardAddressPaymentCred(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_reward_address_payment_cred, input: self)
}

public static func rewardAddressToAddress(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_reward_address_to_address, input: self)
}

public static func rewardAddressesAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_reward_addresses_add
}

public static func rewardAddressesFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_reward_addresses_from_hex, input: input)
}

public static func rewardAddressesFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_reward_addresses_from_json, input: input)
}

public static func rewardAddressesGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_reward_addresses_get
}

public static func rewardAddressesLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_reward_addresses_len, input: self)
}

public static func rewardAddressesNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_reward_addresses_new)
}

public static func rewardAddressesToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_reward_addresses_to_bytes, input: self)
}

public static func rewardAddressesToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_reward_addresses_to_hex, input: self)
}

public static func rewardAddressesToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_reward_addresses_to_json, input: self)
}

public static func scriptAllFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_script_all_from_hex, input: input)
}

public static func scriptAllFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_script_all_from_json, input: input)
}

public static func scriptAllNativeScripts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_script_all_native_scripts, input: self)
}

public static func scriptAllNew(script: OpaqueRustPointer<Script>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_script_all_new, input: script)
}

public static func scriptAllToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_script_all_to_bytes, input: self)
}

public static func scriptAllToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_script_all_to_hex, input: self)
}

public static func scriptAllToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_script_all_to_json, input: self)
}

public static func scriptAnyFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_script_any_from_hex, input: input)
}

public static func scriptAnyFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_script_any_from_json, input: input)
}

public static func scriptAnyNativeScripts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_script_any_native_scripts, input: self)
}

public static func scriptAnyNew(script: OpaqueRustPointer<Script>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_script_any_new, input: script)
}

public static func scriptAnyToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_script_any_to_bytes, input: self)
}

public static func scriptAnyToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_script_any_to_hex, input: self)
}

public static func scriptAnyToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_script_any_to_json, input: self)
}

public static func scriptDataHashFromBech32(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_script_data_hash_from_bech32, input: input)
}

public static func scriptDataHashFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_script_data_hash_from_hex, input: input)
}

public static func scriptDataHashToBech32(self: OpaqueRustPointer<Self>, string2: String) throws -> String {
    return try callRustFunctionRPtrAndString(csl_bridge_script_data_hash_to_bech32, input: self, string: string2)
}

public static func scriptDataHashToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_script_data_hash_to_bytes, input: self)
}

public static func scriptDataHashToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_script_data_hash_to_hex, input: self)
}

public static func scriptHashFromBech32(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_script_hash_from_bech32, input: input)
}

public static func scriptHashFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_script_hash_from_hex, input: input)
}

public static func scriptHashToBech32(self: OpaqueRustPointer<Self>, string2: String) throws -> String {
    return try callRustFunctionRPtrAndString(csl_bridge_script_hash_to_bech32, input: self, string: string2)
}

public static func scriptHashToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_script_hash_to_bytes, input: self)
}

public static func scriptHashToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_script_hash_to_hex, input: self)
}

public static func scriptHashesAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_script_hashes_add
}

public static func scriptHashesFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_script_hashes_from_hex, input: input)
}

public static func scriptHashesFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_script_hashes_from_json, input: input)
}

public static func scriptHashesGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_script_hashes_get
}

public static func scriptHashesLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_script_hashes_len, input: self)
}

public static func scriptHashesNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_script_hashes_new)
}

public static func scriptHashesToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_script_hashes_to_bytes, input: self)
}

public static func scriptHashesToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_script_hashes_to_hex, input: self)
}

public static func scriptHashesToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_script_hashes_to_json, input: self)
}

public static func scriptNOfKFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_script_n_of_k_from_hex, input: input)
}

public static func scriptNOfKFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_script_n_of_k_from_json, input: input)
}

public static func scriptNOfKN(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_script_n_of_k_n, input: self)
}

public static func scriptNOfKNativeScripts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_script_n_of_k_native_scripts, input: self)
}

public static func scriptNOfKToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_script_n_of_k_to_bytes, input: self)
}

public static func scriptNOfKToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_script_n_of_k_to_hex, input: self)
}

public static func scriptNOfKToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_script_n_of_k_to_json, input: self)
}

public static func scriptPubkeyAddrKeyhash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_script_pubkey_addr_keyhash, input: self)
}

public static func scriptPubkeyFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_script_pubkey_from_hex, input: input)
}

public static func scriptPubkeyFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_script_pubkey_from_json, input: input)
}

public static func scriptPubkeyNew(key: OpaqueRustPointer<Key>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_script_pubkey_new, input: key)
}

public static func scriptPubkeyToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_script_pubkey_to_bytes, input: self)
}

public static func scriptPubkeyToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_script_pubkey_to_hex, input: self)
}

public static func scriptPubkeyToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_script_pubkey_to_json, input: self)
}

public static func scriptRefFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_script_ref_from_hex, input: input)
}

public static func scriptRefFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_script_ref_from_json, input: input)
}

public static func scriptRefIsNativeScript(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_script_ref_is_native_script, input: self)
}

public static func scriptRefIsPlutusScript(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_script_ref_is_plutus_script, input: self)
}

public static func scriptRefNativeScript(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_script_ref_native_script, input: self)
}

public static func scriptRefNewNativeScript(script: OpaqueRustPointer<Script>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_script_ref_new_native_script, input: script)
}

public static func scriptRefNewPlutusScript(script: OpaqueRustPointer<Script>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_script_ref_new_plutus_script, input: script)
}

public static func scriptRefPlutusScript(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_script_ref_plutus_script, input: self)
}

public static func scriptRefToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_script_ref_to_bytes, input: self)
}

public static func scriptRefToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_script_ref_to_hex, input: self)
}

public static func scriptRefToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_script_ref_to_json, input: self)
}

public static func scriptRefToUnwrappedBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_script_ref_to_unwrapped_bytes, input: self)
}

public static func singleHostAddrFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_single_host_addr_from_hex, input: input)
}

public static func singleHostAddrFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_single_host_addr_from_json, input: input)
}

public static func singleHostAddrIpv4(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_single_host_addr_ipv4, input: self)
}

public static func singleHostAddrIpv6(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_single_host_addr_ipv6, input: self)
}

public static func singleHostAddrNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_single_host_addr_new)
}

public static func singleHostAddrNewWithIpv4(ipv4: OpaqueRustPointer<Ipv4>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_single_host_addr_new_with_ipv4, input: ipv4)
}

public static func singleHostAddrNewWithIpv4Ipv6(ipv4: OpaqueRustPointer<Ipv4>, ipv6: OpaqueRustPointer<Ipv6>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_single_host_addr_new_with_ipv4_ipv6, input1: ipv4, input2: ipv6)
}

public static func singleHostAddrNewWithIpv6(ipv6: OpaqueRustPointer<Ipv6>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_single_host_addr_new_with_ipv6, input: ipv6)
}

public static func singleHostAddrPort(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_single_host_addr_port, input: self)
}

public static func singleHostAddrToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_single_host_addr_to_bytes, input: self)
}

public static func singleHostAddrToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_single_host_addr_to_hex, input: self)
}

public static func singleHostAddrToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_single_host_addr_to_json, input: self)
}

public static func singleHostNameDnsName(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_single_host_name_dns_name, input: self)
}

public static func singleHostNameFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_single_host_name_from_hex, input: input)
}

public static func singleHostNameFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_single_host_name_from_json, input: input)
}

public static func singleHostNameNew(dnsname: OpaqueRustPointer<DnsName>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_single_host_name_new, input: dnsname)
}

public static func singleHostNamePort(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_single_host_name_port, input: self)
}

public static func singleHostNameToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_single_host_name_to_bytes, input: self)
}

public static func singleHostNameToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_single_host_name_to_hex, input: self)
}

public static func singleHostNameToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_single_host_name_to_json, input: self)
}

public static func stakeAndVoteDelegationDrep(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_and_vote_delegation_drep, input: self)
}

public static func stakeAndVoteDelegationFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_stake_and_vote_delegation_from_hex, input: input)
}

public static func stakeAndVoteDelegationFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_stake_and_vote_delegation_from_json, input: input)
}

public static func stakeAndVoteDelegationHasScriptCredentials(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_stake_and_vote_delegation_has_script_credentials, input: self)
}

public static func stakeAndVoteDelegationPoolKeyhash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_and_vote_delegation_pool_keyhash, input: self)
}

public static func stakeAndVoteDelegationStakeCredential(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_and_vote_delegation_stake_credential, input: self)
}

public static func stakeAndVoteDelegationToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_stake_and_vote_delegation_to_bytes, input: self)
}

public static func stakeAndVoteDelegationToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_stake_and_vote_delegation_to_hex, input: self)
}

public static func stakeAndVoteDelegationToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_stake_and_vote_delegation_to_json, input: self)
}

public static func stakeDelegationFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_stake_delegation_from_hex, input: input)
}

public static func stakeDelegationFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_stake_delegation_from_json, input: input)
}

public static func stakeDelegationHasScriptCredentials(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_stake_delegation_has_script_credentials, input: self)
}

public static func stakeDelegationNew(stake: OpaqueRustPointer<Stake>, key: OpaqueRustPointer<Key>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_stake_delegation_new, input1: stake, input2: key)
}

public static func stakeDelegationPoolKeyhash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_delegation_pool_keyhash, input: self)
}

public static func stakeDelegationStakeCredential(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_delegation_stake_credential, input: self)
}

public static func stakeDelegationToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_stake_delegation_to_bytes, input: self)
}

public static func stakeDelegationToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_stake_delegation_to_hex, input: self)
}

public static func stakeDelegationToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_stake_delegation_to_json, input: self)
}

public static func stakeDeregistrationCoin(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_deregistration_coin, input: self)
}

public static func stakeDeregistrationFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_stake_deregistration_from_hex, input: input)
}

public static func stakeDeregistrationFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_stake_deregistration_from_json, input: input)
}

public static func stakeDeregistrationHasScriptCredentials(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_stake_deregistration_has_script_credentials, input: self)
}

public static func stakeDeregistrationNew(stake: OpaqueRustPointer<Stake>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_deregistration_new, input: stake)
}

public static func stakeDeregistrationNewWithExplicitRefund(stake: OpaqueRustPointer<Stake>, coin: OpaqueRustPointer<Coin>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_stake_deregistration_new_with_explicit_refund, input1: stake, input2: coin)
}

public static func stakeDeregistrationStakeCredential(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_deregistration_stake_credential, input: self)
}

public static func stakeDeregistrationToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_stake_deregistration_to_bytes, input: self)
}

public static func stakeDeregistrationToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_stake_deregistration_to_hex, input: self)
}

public static func stakeDeregistrationToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_stake_deregistration_to_json, input: self)
}

public static func stakeRegistrationAndDelegationCoin(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_registration_and_delegation_coin, input: self)
}

public static func stakeRegistrationAndDelegationFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_stake_registration_and_delegation_from_hex, input: input)
}

public static func stakeRegistrationAndDelegationFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_stake_registration_and_delegation_from_json, input: input)
}

public static func stakeRegistrationAndDelegationHasScriptCredentials(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_stake_registration_and_delegation_has_script_credentials, input: self)
}

public static func stakeRegistrationAndDelegationPoolKeyhash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_registration_and_delegation_pool_keyhash, input: self)
}

public static func stakeRegistrationAndDelegationStakeCredential(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_registration_and_delegation_stake_credential, input: self)
}

public static func stakeRegistrationAndDelegationToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_stake_registration_and_delegation_to_bytes, input: self)
}

public static func stakeRegistrationAndDelegationToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_stake_registration_and_delegation_to_hex, input: self)
}

public static func stakeRegistrationAndDelegationToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_stake_registration_and_delegation_to_json, input: self)
}

public static func stakeRegistrationCoin(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_registration_coin, input: self)
}

public static func stakeRegistrationFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_stake_registration_from_hex, input: input)
}

public static func stakeRegistrationFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_stake_registration_from_json, input: input)
}

public static func stakeRegistrationHasScriptCredentials(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_stake_registration_has_script_credentials, input: self)
}

public static func stakeRegistrationNew(stake: OpaqueRustPointer<Stake>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_registration_new, input: stake)
}

public static func stakeRegistrationNewWithExplicitDeposit(stake: OpaqueRustPointer<Stake>, coin: OpaqueRustPointer<Coin>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_stake_registration_new_with_explicit_deposit, input1: stake, input2: coin)
}

public static func stakeRegistrationStakeCredential(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_registration_stake_credential, input: self)
}

public static func stakeRegistrationToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_stake_registration_to_bytes, input: self)
}

public static func stakeRegistrationToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_stake_registration_to_hex, input: self)
}

public static func stakeRegistrationToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_stake_registration_to_json, input: self)
}

public static func stakeVoteRegistrationAndDelegationCoin(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_vote_registration_and_delegation_coin, input: self)
}

public static func stakeVoteRegistrationAndDelegationDrep(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_vote_registration_and_delegation_drep, input: self)
}

public static func stakeVoteRegistrationAndDelegationFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_stake_vote_registration_and_delegation_from_hex, input: input)
}

public static func stakeVoteRegistrationAndDelegationFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_stake_vote_registration_and_delegation_from_json, input: input)
}

public static func stakeVoteRegistrationAndDelegationHasScriptCredentials(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_stake_vote_registration_and_delegation_has_script_credentials, input: self)
}

public static func stakeVoteRegistrationAndDelegationPoolKeyhash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_vote_registration_and_delegation_pool_keyhash, input: self)
}

public static func stakeVoteRegistrationAndDelegationStakeCredential(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_stake_vote_registration_and_delegation_stake_credential, input: self)
}

public static func stakeVoteRegistrationAndDelegationToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_stake_vote_registration_and_delegation_to_bytes, input: self)
}

public static func stakeVoteRegistrationAndDelegationToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_stake_vote_registration_and_delegation_to_hex, input: self)
}

public static func stakeVoteRegistrationAndDelegationToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_stake_vote_registration_and_delegation_to_json, input: self)
}

public static func stringsAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_strings_add
}

public static func stringsGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> String {
    return try // TODO: Handle pattern rptr_and_int64_to_string for csl_bridge_strings_get
}

public static func stringsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_strings_len, input: self)
}

public static func stringsNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_strings_new)
}

public static func timelockExpiryFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_timelock_expiry_from_hex, input: input)
}

public static func timelockExpiryFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_timelock_expiry_from_json, input: input)
}

public static func timelockExpiryNewTimelockexpiry(slot: OpaqueRustPointer<Slot>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_timelock_expiry_new_timelockexpiry, input: slot)
}

public static func timelockExpirySlot(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_timelock_expiry_slot, input: self)
}

public static func timelockExpirySlotBignum(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_timelock_expiry_slot_bignum, input: self)
}

public static func timelockExpiryToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_timelock_expiry_to_bytes, input: self)
}

public static func timelockExpiryToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_timelock_expiry_to_hex, input: self)
}

public static func timelockExpiryToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_timelock_expiry_to_json, input: self)
}

public static func timelockStartFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_timelock_start_from_hex, input: input)
}

public static func timelockStartFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_timelock_start_from_json, input: input)
}

public static func timelockStartNewTimelockstart(slot: OpaqueRustPointer<Slot>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_timelock_start_new_timelockstart, input: slot)
}

public static func timelockStartSlot(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_timelock_start_slot, input: self)
}

public static func timelockStartSlotBignum(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_timelock_start_slot_bignum, input: self)
}

public static func timelockStartToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_timelock_start_to_bytes, input: self)
}

public static func timelockStartToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_timelock_start_to_hex, input: self)
}

public static func timelockStartToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_timelock_start_to_json, input: self)
}

public static func transactionAuxiliaryData(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_auxiliary_data, input: self)
}

public static func transactionBatchGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Transaction> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_transaction_batch_get
}

public static func transactionBatchLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_transaction_batch_len, input: self)
}

public static func transactionBatchListGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Transaction> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_transaction_batch_list_get
}

public static func transactionBatchListLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_transaction_batch_list_len, input: self)
}

public static func transactionBodiesAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_bodies_add
}

public static func transactionBodiesFromHex(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_bodies_from_hex, input: input)
}

public static func transactionBodiesFromJson(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_bodies_from_json, input: input)
}

public static func transactionBodiesGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Transaction> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_transaction_bodies_get
}

public static func transactionBodiesLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_transaction_bodies_len, input: self)
}

public static func transactionBodiesNew() throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionNoInput(csl_bridge_transaction_bodies_new)
}

public static func transactionBodiesToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_transaction_bodies_to_bytes, input: self)
}

public static func transactionBodiesToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_bodies_to_hex, input: self)
}

public static func transactionBodiesToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_bodies_to_json, input: self)
}

public static func transactionBody(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body, input: self)
}

public static func transactionBodyAuxiliaryDataHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_auxiliary_data_hash, input: self)
}

public static func transactionBodyCerts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_certs, input: self)
}

public static func transactionBodyCollateral(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_collateral, input: self)
}

public static func transactionBodyCollateralReturn(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_collateral_return, input: self)
}

public static func transactionBodyCurrentTreasuryValue(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_current_treasury_value, input: self)
}

public static func transactionBodyDonation(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_donation, input: self)
}

public static func transactionBodyFee(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_fee, input: self)
}

public static func transactionBodyFromHex(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_body_from_hex, input: input)
}

public static func transactionBodyFromJson(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_body_from_json, input: input)
}

public static func transactionBodyInputs(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_inputs, input: self)
}

public static func transactionBodyMint(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_mint, input: self)
}

public static func transactionBodyNetworkId(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_network_id, input: self)
}

public static func transactionBodyOutputs(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_outputs, input: self)
}

public static func transactionBodyReferenceInputs(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_reference_inputs, input: self)
}

public static func transactionBodyRemoveTtl() throws -> Unknown {
    return try // TODO: Handle pattern no_input_to_unknown for csl_bridge_transaction_body_remove_ttl
}

public static func transactionBodyRequiredSigners(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_required_signers, input: self)
}

public static func transactionBodyScriptDataHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_script_data_hash, input: self)
}

public static func transactionBodySetAuxiliaryDataHash(hash: OpaqueRustPointer<Hash>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_auxiliary_data_hash
}

public static func transactionBodySetCerts(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_certs
}

public static func transactionBodySetCollateral(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_collateral
}

public static func transactionBodySetCollateralReturn(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_collateral_return
}

public static func transactionBodySetCurrentTreasuryValue(value: OpaqueRustPointer<Value>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_current_treasury_value
}

public static func transactionBodySetDonation(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_donation
}

public static func transactionBodySetMint(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_mint
}

public static func transactionBodySetNetworkId(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_network_id
}

public static func transactionBodySetReferenceInputs(input: OpaqueRustPointer<Input>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_reference_inputs
}

public static func transactionBodySetRequiredSigners(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_required_signers
}

public static func transactionBodySetScriptDataHash(hash: OpaqueRustPointer<Hash>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_script_data_hash
}

public static func transactionBodySetTotalCollateral(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_total_collateral
}

public static func transactionBodySetTtl(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_ttl
}

public static func transactionBodySetUpdate(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_update
}

public static func transactionBodySetValidityStartInterval(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_validity_start_interval
}

public static func transactionBodySetValidityStartIntervalBignum(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_validity_start_interval_bignum
}

public static func transactionBodySetVotingProcedures(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_voting_procedures
}

public static func transactionBodySetVotingProposals(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_voting_proposals
}

public static func transactionBodySetWithdrawals(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_body_set_withdrawals
}

public static func transactionBodyToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_transaction_body_to_bytes, input: self)
}

public static func transactionBodyToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_body_to_hex, input: self)
}

public static func transactionBodyToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_body_to_json, input: self)
}

public static func transactionBodyTotalCollateral(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_total_collateral, input: self)
}

public static func transactionBodyTtl(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_transaction_body_ttl, input: self)
}

public static func transactionBodyTtlBignum(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_ttl_bignum, input: self)
}

public static func transactionBodyUpdate(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_update, input: self)
}

public static func transactionBodyValidityStartInterval(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_transaction_body_validity_start_interval, input: self)
}

public static func transactionBodyValidityStartIntervalBignum(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_validity_start_interval_bignum, input: self)
}

public static func transactionBodyVotingProcedures(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_voting_procedures, input: self)
}

public static func transactionBodyVotingProposals(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_voting_proposals, input: self)
}

public static func transactionBodyWithdrawals(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_body_withdrawals, input: self)
}

public static func transactionBuilderAddChangeIfNeeded(self: OpaqueRustPointer<Self>, address: OpaqueRustPointer<Address>) throws -> Bool {
    return try callRustFunctionTwoRPtrsForBool(csl_bridge_transaction_builder_add_change_if_needed, input1: self, input2: address)
}

public static func transactionBuilderAddExtraWitnessDatum(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_add_extra_witness_datum
}

public static func transactionBuilderAddInputsFrom(self: OpaqueRustPointer<Self>, input: OpaqueRustPointer<Input>) throws -> Unknown {
    return try // TODO: Handle pattern two_rptrs_to_unknown for csl_bridge_transaction_builder_add_inputs_from
}

public static func transactionBuilderAddJsonMetadatum(self: OpaqueRustPointer<Self>, key: OpaqueRustPointer<Key>) throws -> Unknown {
    return try // TODO: Handle pattern two_rptrs_to_unknown for csl_bridge_transaction_builder_add_json_metadatum
}

public static func transactionBuilderAddMetadatum(self: OpaqueRustPointer<Self>, key: OpaqueRustPointer<Key>) throws -> Unknown {
    return try // TODO: Handle pattern two_rptrs_to_unknown for csl_bridge_transaction_builder_add_metadatum
}

public static func transactionBuilderAddOutput(output: OpaqueRustPointer<Output>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_add_output
}

public static func transactionBuilderAddReferenceInput(input: OpaqueRustPointer<Input>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_add_reference_input
}

public static func transactionBuilderAddRequiredSigner(key: OpaqueRustPointer<Key>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_add_required_signer
}

public static func transactionBuilderAddScriptReferenceInput(script: OpaqueRustPointer<Script>, script: OpaqueRustPointer<Script>) throws -> Unknown {
    return try // TODO: Handle pattern two_rptrs_to_unknown for csl_bridge_transaction_builder_add_script_reference_input
}

public static func transactionBuilderBuild(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_build, input: self)
}

public static func transactionBuilderBuildTx(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_build_tx, input: self)
}

public static func transactionBuilderBuildTxUnsafe(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_build_tx_unsafe, input: self)
}

public static func transactionBuilderCalcScriptDataHash(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_calc_script_data_hash
}

public static func transactionBuilderConfigBuilderBuild(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_config_builder_build, input: self)
}

public static func transactionBuilderConfigBuilderCoinsPerUtxoByte(self: OpaqueRustPointer<Self>, utxo: OpaqueRustPointer<UTXO>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionTwoRPtrs(csl_bridge_transaction_builder_config_builder_coins_per_utxo_byte, input1: self, input2: utxo)
}

public static func transactionBuilderConfigBuilderExUnitPrices(self: OpaqueRustPointer<Self>, exunitprices: OpaqueRustPointer<ExUnitPrices>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionTwoRPtrs(csl_bridge_transaction_builder_config_builder_ex_unit_prices, input1: self, input2: exunitprices)
}

public static func transactionBuilderConfigBuilderFeeAlgo(self: OpaqueRustPointer<Self>, fee: OpaqueRustPointer<Fee>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionTwoRPtrs(csl_bridge_transaction_builder_config_builder_fee_algo, input1: self, input2: fee)
}

public static func transactionBuilderConfigBuilderKeyDeposit(self: OpaqueRustPointer<Self>, key: OpaqueRustPointer<Key>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionTwoRPtrs(csl_bridge_transaction_builder_config_builder_key_deposit, input1: self, input2: key)
}

public static func transactionBuilderConfigBuilderMaxTxSize(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Transaction> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_transaction_builder_config_builder_max_tx_size
}

public static func transactionBuilderConfigBuilderMaxValueSize(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Transaction> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_transaction_builder_config_builder_max_value_size
}

public static func transactionBuilderConfigBuilderNew() throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionNoInput(csl_bridge_transaction_builder_config_builder_new)
}

public static func transactionBuilderConfigBuilderPoolDeposit(self: OpaqueRustPointer<Self>, pool: OpaqueRustPointer<Pool>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionTwoRPtrs(csl_bridge_transaction_builder_config_builder_pool_deposit, input1: self, input2: pool)
}

public static func transactionBuilderConfigBuilderRefScriptCoinsPerByte(self: OpaqueRustPointer<Self>, script: OpaqueRustPointer<Script>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionTwoRPtrs(csl_bridge_transaction_builder_config_builder_ref_script_coins_per_byte, input1: self, input2: script)
}

public static func transactionBuilderFeeForOutput(self: OpaqueRustPointer<Self>, output: OpaqueRustPointer<Output>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionTwoRPtrs(csl_bridge_transaction_builder_fee_for_output, input1: self, input2: output)
}

public static func transactionBuilderFullSize(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_transaction_builder_full_size, input: self)
}

public static func transactionBuilderGetAuxiliaryData(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_get_auxiliary_data, input: self)
}

public static func transactionBuilderGetCurrentTreasuryValue(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_get_current_treasury_value, input: self)
}

public static func transactionBuilderGetDeposit(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_get_deposit, input: self)
}

public static func transactionBuilderGetDonation(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_get_donation, input: self)
}

public static func transactionBuilderGetExplicitInput(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_get_explicit_input, input: self)
}

public static func transactionBuilderGetExplicitOutput(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_get_explicit_output, input: self)
}

public static func transactionBuilderGetExtraWitnessDatums(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_get_extra_witness_datums, input: self)
}

public static func transactionBuilderGetFeeIfSet(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_get_fee_if_set, input: self)
}

public static func transactionBuilderGetImplicitInput(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_get_implicit_input, input: self)
}

public static func transactionBuilderGetMint(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_get_mint, input: self)
}

public static func transactionBuilderGetMintBuilder(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_get_mint_builder, input: self)
}

public static func transactionBuilderGetMintScripts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_get_mint_scripts, input: self)
}

public static func transactionBuilderGetNativeInputScripts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_get_native_input_scripts, input: self)
}

public static func transactionBuilderGetPlutusInputScripts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_get_plutus_input_scripts, input: self)
}

public static func transactionBuilderGetReferenceInputs(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_get_reference_inputs, input: self)
}

public static func transactionBuilderGetTotalInput(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_get_total_input, input: self)
}

public static func transactionBuilderGetTotalOutput(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_get_total_output, input: self)
}

public static func transactionBuilderMinFee(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_min_fee, input: self)
}

public static func transactionBuilderNew(cfg: OpaqueRustPointer<Cfg>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_builder_new, input: cfg)
}

public static func transactionBuilderOutputSizes(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_builder_output_sizes, input: self)
}

public static func transactionBuilderRemoveAuxiliaryData() throws -> Unknown {
    return try // TODO: Handle pattern no_input_to_unknown for csl_bridge_transaction_builder_remove_auxiliary_data
}

public static func transactionBuilderRemoveCerts() throws -> Unknown {
    return try // TODO: Handle pattern no_input_to_unknown for csl_bridge_transaction_builder_remove_certs
}

public static func transactionBuilderRemoveCollateralReturn() throws -> Unknown {
    return try // TODO: Handle pattern no_input_to_unknown for csl_bridge_transaction_builder_remove_collateral_return
}

public static func transactionBuilderRemoveMintBuilder() throws -> Unknown {
    return try // TODO: Handle pattern no_input_to_unknown for csl_bridge_transaction_builder_remove_mint_builder
}

public static func transactionBuilderRemoveScriptDataHash() throws -> Unknown {
    return try // TODO: Handle pattern no_input_to_unknown for csl_bridge_transaction_builder_remove_script_data_hash
}

public static func transactionBuilderRemoveTotalCollateral() throws -> Unknown {
    return try // TODO: Handle pattern no_input_to_unknown for csl_bridge_transaction_builder_remove_total_collateral
}

public static func transactionBuilderRemoveTtl() throws -> Unknown {
    return try // TODO: Handle pattern no_input_to_unknown for csl_bridge_transaction_builder_remove_ttl
}

public static func transactionBuilderRemoveValidityStartInterval() throws -> Unknown {
    return try // TODO: Handle pattern no_input_to_unknown for csl_bridge_transaction_builder_remove_validity_start_interval
}

public static func transactionBuilderRemoveWithdrawals() throws -> Unknown {
    return try // TODO: Handle pattern no_input_to_unknown for csl_bridge_transaction_builder_remove_withdrawals
}

public static func transactionBuilderSetAuxiliaryData(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_auxiliary_data
}

public static func transactionBuilderSetCerts(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_certs
}

public static func transactionBuilderSetCertsBuilder(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_certs_builder
}

public static func transactionBuilderSetCollateral(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_collateral
}

public static func transactionBuilderSetCollateralReturn(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_collateral_return
}

public static func transactionBuilderSetCollateralReturnAndTotal(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_collateral_return_and_total
}

public static func transactionBuilderSetCurrentTreasuryValue(value: OpaqueRustPointer<Value>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_current_treasury_value
}

public static func transactionBuilderSetDonation(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_donation
}

public static func transactionBuilderSetFee(fee: OpaqueRustPointer<Fee>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_fee
}

public static func transactionBuilderSetInputs(input: OpaqueRustPointer<Input>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_inputs
}

public static func transactionBuilderSetMetadata(metadata: OpaqueRustPointer<Metadata>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_metadata
}

public static func transactionBuilderSetMinFee(fee: OpaqueRustPointer<Fee>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_min_fee
}

public static func transactionBuilderSetMint(script: OpaqueRustPointer<Script>, script: OpaqueRustPointer<Script>) throws -> Unknown {
    return try // TODO: Handle pattern two_rptrs_to_unknown for csl_bridge_transaction_builder_set_mint
}

public static func transactionBuilderSetMintAsset(asset: OpaqueRustPointer<Asset>, asset: OpaqueRustPointer<Asset>) throws -> Unknown {
    return try // TODO: Handle pattern two_rptrs_to_unknown for csl_bridge_transaction_builder_set_mint_asset
}

public static func transactionBuilderSetMintBuilder(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_mint_builder
}

public static func transactionBuilderSetScriptDataHash(hash: OpaqueRustPointer<Hash>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_script_data_hash
}

public static func transactionBuilderSetTotalCollateral(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_total_collateral
}

public static func transactionBuilderSetTotalCollateralAndReturn(address: OpaqueRustPointer<Address>, address: OpaqueRustPointer<Address>) throws -> Unknown {
    return try // TODO: Handle pattern two_rptrs_to_unknown for csl_bridge_transaction_builder_set_total_collateral_and_return
}

public static func transactionBuilderSetTtl(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_ttl
}

public static func transactionBuilderSetTtlBignum(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_ttl_bignum
}

public static func transactionBuilderSetValidityStartInterval(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_validity_start_interval
}

public static func transactionBuilderSetValidityStartIntervalBignum(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_validity_start_interval_bignum
}

public static func transactionBuilderSetVotingBuilder(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_voting_builder
}

public static func transactionBuilderSetVotingProposalBuilder(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_voting_proposal_builder
}

public static func transactionBuilderSetWithdrawals(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_withdrawals
}

public static func transactionBuilderSetWithdrawalsBuilder(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_builder_set_withdrawals_builder
}

public static func transactionFromHex(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_from_hex, input: input)
}

public static func transactionFromJson(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_from_json, input: input)
}

public static func transactionHashFromBech32(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_hash_from_bech32, input: input)
}

public static func transactionHashFromHex(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_hash_from_hex, input: input)
}

public static func transactionHashToBech32(self: OpaqueRustPointer<Self>, string2: String) throws -> String {
    return try callRustFunctionRPtrAndString(csl_bridge_transaction_hash_to_bech32, input: self, string: string2)
}

public static func transactionHashToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_transaction_hash_to_bytes, input: self)
}

public static func transactionHashToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_hash_to_hex, input: self)
}

public static func transactionInputFromHex(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_input_from_hex, input: input)
}

public static func transactionInputFromJson(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_input_from_json, input: input)
}

public static func transactionInputIndex(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_transaction_input_index, input: self)
}

public static func transactionInputNew(transaction: OpaqueRustPointer<Transaction>, value: Int64) throws -> OpaqueRustPointer<Transaction> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_transaction_input_new
}

public static func transactionInputToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_transaction_input_to_bytes, input: self)
}

public static func transactionInputToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_input_to_hex, input: self)
}

public static func transactionInputToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_input_to_json, input: self)
}

public static func transactionInputTransactionId(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_input_transaction_id, input: self)
}

public static func transactionInputsAdd(self: OpaqueRustPointer<Self>, input: OpaqueRustPointer<Input>) throws -> Bool {
    return try callRustFunctionTwoRPtrsForBool(csl_bridge_transaction_inputs_add, input1: self, input2: input)
}

public static func transactionInputsFromHex(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_inputs_from_hex, input: input)
}

public static func transactionInputsFromJson(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_inputs_from_json, input: input)
}

public static func transactionInputsGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Transaction> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_transaction_inputs_get
}

public static func transactionInputsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_transaction_inputs_len, input: self)
}

public static func transactionInputsNew() throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionNoInput(csl_bridge_transaction_inputs_new)
}

public static func transactionInputsToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_transaction_inputs_to_bytes, input: self)
}

public static func transactionInputsToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_inputs_to_hex, input: self)
}

public static func transactionInputsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_inputs_to_json, input: self)
}

public static func transactionInputsToOption(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_inputs_to_option, input: self)
}

public static func transactionIsValid(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_transaction_is_valid, input: self)
}

public static func transactionMetadatumAsBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_transaction_metadatum_as_bytes, input: self)
}

public static func transactionMetadatumAsInt(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_metadatum_as_int, input: self)
}

public static func transactionMetadatumAsList(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_metadatum_as_list, input: self)
}

public static func transactionMetadatumAsMap(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_metadatum_as_map, input: self)
}

public static func transactionMetadatumAsText(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_metadatum_as_text, input: self)
}

public static func transactionMetadatumFromHex(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_metadatum_from_hex, input: input)
}

public static func transactionMetadatumKind(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_transaction_metadatum_kind, input: self)
}

public static func transactionMetadatumLabelsAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_metadatum_labels_add
}

public static func transactionMetadatumLabelsFromHex(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_metadatum_labels_from_hex, input: input)
}

public static func transactionMetadatumLabelsGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Transaction> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_transaction_metadatum_labels_get
}

public static func transactionMetadatumLabelsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_transaction_metadatum_labels_len, input: self)
}

public static func transactionMetadatumLabelsNew() throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionNoInput(csl_bridge_transaction_metadatum_labels_new)
}

public static func transactionMetadatumLabelsToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_transaction_metadatum_labels_to_bytes, input: self)
}

public static func transactionMetadatumLabelsToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_metadatum_labels_to_hex, input: self)
}

public static func transactionMetadatumNewInt(value: OpaqueRustPointer<Value>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_metadatum_new_int, input: value)
}

public static func transactionMetadatumNewList(list: OpaqueRustPointer<List>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_metadatum_new_list, input: list)
}

public static func transactionMetadatumNewMap(map: OpaqueRustPointer<Map>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_metadatum_new_map, input: map)
}

public static func transactionMetadatumNewText(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_metadatum_new_text, input: input)
}

public static func transactionMetadatumToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_transaction_metadatum_to_bytes, input: self)
}

public static func transactionMetadatumToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_metadatum_to_hex, input: self)
}

public static func transactionNew(body: OpaqueRustPointer<Body>, witness: OpaqueRustPointer<Witness>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionTwoRPtrs(csl_bridge_transaction_new, input1: body, input2: witness)
}

public static func transactionOutputAddress(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_output_address, input: self)
}

public static func transactionOutputAmount(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_output_amount, input: self)
}

public static func transactionOutputAmountBuilderBuild(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_output_amount_builder_build, input: self)
}

public static func transactionOutputAmountBuilderWithCoin(self: OpaqueRustPointer<Self>, coin: OpaqueRustPointer<Coin>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionTwoRPtrs(csl_bridge_transaction_output_amount_builder_with_coin, input1: self, input2: coin)
}

public static func transactionOutputAmountBuilderWithValue(self: OpaqueRustPointer<Self>, amount: OpaqueRustPointer<Amount>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionTwoRPtrs(csl_bridge_transaction_output_amount_builder_with_value, input1: self, input2: amount)
}

public static func transactionOutputBuilderNew() throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionNoInput(csl_bridge_transaction_output_builder_new)
}

public static func transactionOutputBuilderNext(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_output_builder_next, input: self)
}

public static func transactionOutputBuilderWithAddress(self: OpaqueRustPointer<Self>, address: OpaqueRustPointer<Address>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionTwoRPtrs(csl_bridge_transaction_output_builder_with_address, input1: self, input2: address)
}

public static func transactionOutputBuilderWithDataHash(self: OpaqueRustPointer<Self>, hash: OpaqueRustPointer<Hash>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionTwoRPtrs(csl_bridge_transaction_output_builder_with_data_hash, input1: self, input2: hash)
}

public static func transactionOutputBuilderWithPlutusData(self: OpaqueRustPointer<Self>, data: OpaqueRustPointer<Data>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionTwoRPtrs(csl_bridge_transaction_output_builder_with_plutus_data, input1: self, input2: data)
}

public static func transactionOutputBuilderWithScriptRef(self: OpaqueRustPointer<Self>, script: OpaqueRustPointer<Script>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionTwoRPtrs(csl_bridge_transaction_output_builder_with_script_ref, input1: self, input2: script)
}

public static func transactionOutputDataHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_output_data_hash, input: self)
}

public static func transactionOutputFromHex(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_output_from_hex, input: input)
}

public static func transactionOutputFromJson(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_output_from_json, input: input)
}

public static func transactionOutputHasDataHash(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_transaction_output_has_data_hash, input: self)
}

public static func transactionOutputHasPlutusData(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_transaction_output_has_plutus_data, input: self)
}

public static func transactionOutputHasScriptRef(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_transaction_output_has_script_ref, input: self)
}

public static func transactionOutputNew(address: OpaqueRustPointer<Address>, amount: OpaqueRustPointer<Amount>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionTwoRPtrs(csl_bridge_transaction_output_new, input1: address, input2: amount)
}

public static func transactionOutputPlutusData(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_output_plutus_data, input: self)
}

public static func transactionOutputScriptRef(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_output_script_ref, input: self)
}

public static func transactionOutputSerializationFormat(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_transaction_output_serialization_format, input: self)
}

public static func transactionOutputSetDataHash(hash: OpaqueRustPointer<Hash>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_output_set_data_hash
}

public static func transactionOutputSetPlutusData(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_output_set_plutus_data
}

public static func transactionOutputSetScriptRef(script: OpaqueRustPointer<Script>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_output_set_script_ref
}

public static func transactionOutputToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_transaction_output_to_bytes, input: self)
}

public static func transactionOutputToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_output_to_hex, input: self)
}

public static func transactionOutputToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_output_to_json, input: self)
}

public static func transactionOutputsAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_outputs_add
}

public static func transactionOutputsFromHex(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_outputs_from_hex, input: input)
}

public static func transactionOutputsFromJson(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_outputs_from_json, input: input)
}

public static func transactionOutputsGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Transaction> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_transaction_outputs_get
}

public static func transactionOutputsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_transaction_outputs_len, input: self)
}

public static func transactionOutputsNew() throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionNoInput(csl_bridge_transaction_outputs_new)
}

public static func transactionOutputsToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_transaction_outputs_to_bytes, input: self)
}

public static func transactionOutputsToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_outputs_to_hex, input: self)
}

public static func transactionOutputsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_outputs_to_json, input: self)
}

public static func transactionSetIsValid(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_set_is_valid
}

public static func transactionToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_transaction_to_bytes, input: self)
}

public static func transactionToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_to_hex, input: self)
}

public static func transactionToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_to_json, input: self)
}

public static func transactionUnspentOutputFromHex(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_unspent_output_from_hex, input: input)
}

public static func transactionUnspentOutputFromJson(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_unspent_output_from_json, input: input)
}

public static func transactionUnspentOutputInput(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_unspent_output_input, input: self)
}

public static func transactionUnspentOutputNew(input: OpaqueRustPointer<Input>, output: OpaqueRustPointer<Output>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionTwoRPtrs(csl_bridge_transaction_unspent_output_new, input1: input, input2: output)
}

public static func transactionUnspentOutputOutput(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_unspent_output_output, input: self)
}

public static func transactionUnspentOutputToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_transaction_unspent_output_to_bytes, input: self)
}

public static func transactionUnspentOutputToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_unspent_output_to_hex, input: self)
}

public static func transactionUnspentOutputToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_unspent_output_to_json, input: self)
}

public static func transactionUnspentOutputsAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_unspent_outputs_add
}

public static func transactionUnspentOutputsFromJson(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_unspent_outputs_from_json, input: input)
}

public static func transactionUnspentOutputsGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Transaction> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_transaction_unspent_outputs_get
}

public static func transactionUnspentOutputsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_transaction_unspent_outputs_len, input: self)
}

public static func transactionUnspentOutputsNew() throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionNoInput(csl_bridge_transaction_unspent_outputs_new)
}

public static func transactionUnspentOutputsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_unspent_outputs_to_json, input: self)
}

public static func transactionWitnessSet(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_witness_set, input: self)
}

public static func transactionWitnessSetBootstraps(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_witness_set_bootstraps, input: self)
}

public static func transactionWitnessSetFromHex(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_witness_set_from_hex, input: input)
}

public static func transactionWitnessSetFromJson(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_witness_set_from_json, input: input)
}

public static func transactionWitnessSetNativeScripts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_witness_set_native_scripts, input: self)
}

public static func transactionWitnessSetNew() throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionNoInput(csl_bridge_transaction_witness_set_new)
}

public static func transactionWitnessSetPlutusData(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_witness_set_plutus_data, input: self)
}

public static func transactionWitnessSetPlutusScripts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_witness_set_plutus_scripts, input: self)
}

public static func transactionWitnessSetRedeemers(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_witness_set_redeemers, input: self)
}

public static func transactionWitnessSetSetBootstraps(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_witness_set_set_bootstraps
}

public static func transactionWitnessSetSetNativeScripts(script: OpaqueRustPointer<Script>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_witness_set_set_native_scripts
}

public static func transactionWitnessSetSetPlutusData(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_witness_set_set_plutus_data
}

public static func transactionWitnessSetSetPlutusScripts(script: OpaqueRustPointer<Script>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_witness_set_set_plutus_scripts
}

public static func transactionWitnessSetSetRedeemers(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_witness_set_set_redeemers
}

public static func transactionWitnessSetSetVkeys(key: OpaqueRustPointer<Key>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_witness_set_set_vkeys
}

public static func transactionWitnessSetToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_transaction_witness_set_to_bytes, input: self)
}

public static func transactionWitnessSetToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_witness_set_to_hex, input: self)
}

public static func transactionWitnessSetToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_witness_set_to_json, input: self)
}

public static func transactionWitnessSetVkeys(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_transaction_witness_set_vkeys, input: self)
}

public static func transactionWitnessSetsAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_transaction_witness_sets_add
}

public static func transactionWitnessSetsFromHex(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_witness_sets_from_hex, input: input)
}

public static func transactionWitnessSetsFromJson(input: String) throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunction(csl_bridge_transaction_witness_sets_from_json, input: input)
}

public static func transactionWitnessSetsGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Transaction> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_transaction_witness_sets_get
}

public static func transactionWitnessSetsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_transaction_witness_sets_len, input: self)
}

public static func transactionWitnessSetsNew() throws -> OpaqueRustPointer<Transaction> {
    return try callRustFunctionNoInput(csl_bridge_transaction_witness_sets_new)
}

public static func transactionWitnessSetsToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_transaction_witness_sets_to_bytes, input: self)
}

public static func transactionWitnessSetsToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_witness_sets_to_hex, input: self)
}

public static func transactionWitnessSetsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_transaction_witness_sets_to_json, input: self)
}

public static func treasuryWithdrawalsActionFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_treasury_withdrawals_action_from_hex, input: input)
}

public static func treasuryWithdrawalsActionFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_treasury_withdrawals_action_from_json, input: input)
}

public static func treasuryWithdrawalsActionNew(withdrawals: OpaqueRustPointer<Withdrawals>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_treasury_withdrawals_action_new, input: withdrawals)
}

public static func treasuryWithdrawalsActionNewWithPolicyHash(withdrawals: OpaqueRustPointer<Withdrawals>, hash: OpaqueRustPointer<Hash>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_treasury_withdrawals_action_new_with_policy_hash, input1: withdrawals, input2: hash)
}

public static func treasuryWithdrawalsActionPolicyHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_treasury_withdrawals_action_policy_hash, input: self)
}

public static func treasuryWithdrawalsActionToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_treasury_withdrawals_action_to_bytes, input: self)
}

public static func treasuryWithdrawalsActionToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_treasury_withdrawals_action_to_hex, input: self)
}

public static func treasuryWithdrawalsActionToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_treasury_withdrawals_action_to_json, input: self)
}

public static func treasuryWithdrawalsActionWithdrawals(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_treasury_withdrawals_action_withdrawals, input: self)
}

public static func treasuryWithdrawalsFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_treasury_withdrawals_from_json, input: input)
}

public static func treasuryWithdrawalsGet(self: OpaqueRustPointer<Self>, key: OpaqueRustPointer<Key>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_treasury_withdrawals_get, input1: self, input2: key)
}

public static func treasuryWithdrawalsInsert(value: OpaqueRustPointer<Value>, key: OpaqueRustPointer<Key>) throws -> Unknown {
    return try // TODO: Handle pattern two_rptrs_to_unknown for csl_bridge_treasury_withdrawals_insert
}

public static func treasuryWithdrawalsKeys(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_treasury_withdrawals_keys, input: self)
}

public static func treasuryWithdrawalsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_treasury_withdrawals_len, input: self)
}

public static func treasuryWithdrawalsNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_treasury_withdrawals_new)
}

public static func treasuryWithdrawalsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_treasury_withdrawals_to_json, input: self)
}

public static func txInputsBuilderAddNativeScriptUtxo(witness: OpaqueRustPointer<Witness>, witness: OpaqueRustPointer<Witness>) throws -> Unknown {
    return try // TODO: Handle pattern two_rptrs_to_unknown for csl_bridge_tx_inputs_builder_add_native_script_utxo
}

public static func txInputsBuilderAddPlutusScriptUtxo(witness: OpaqueRustPointer<Witness>, witness: OpaqueRustPointer<Witness>) throws -> Unknown {
    return try // TODO: Handle pattern two_rptrs_to_unknown for csl_bridge_tx_inputs_builder_add_plutus_script_utxo
}

public static func txInputsBuilderAddRegularUtxo(utxo: OpaqueRustPointer<UTXO>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_tx_inputs_builder_add_regular_utxo
}

public static func txInputsBuilderAddRequiredSigner(key: OpaqueRustPointer<Key>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_tx_inputs_builder_add_required_signer
}

public static func txInputsBuilderAddRequiredSigners(key: OpaqueRustPointer<Key>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_tx_inputs_builder_add_required_signers
}

public static func txInputsBuilderGetNativeInputScripts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_tx_inputs_builder_get_native_input_scripts, input: self)
}

public static func txInputsBuilderGetPlutusInputScripts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_tx_inputs_builder_get_plutus_input_scripts, input: self)
}

public static func txInputsBuilderGetRefInputs(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_tx_inputs_builder_get_ref_inputs, input: self)
}

public static func txInputsBuilderInputs(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_tx_inputs_builder_inputs, input: self)
}

public static func txInputsBuilderInputsOption(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_tx_inputs_builder_inputs_option, input: self)
}

public static func txInputsBuilderLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_tx_inputs_builder_len, input: self)
}

public static func txInputsBuilderNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_tx_inputs_builder_new)
}

public static func txInputsBuilderTotalValue(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_tx_inputs_builder_total_value, input: self)
}

public static func uRLFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_u_r_l_from_hex, input: input)
}

public static func uRLFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_u_r_l_from_json, input: input)
}

public static func uRLNew(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_u_r_l_new, input: input)
}

public static func uRLToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_u_r_l_to_bytes, input: self)
}

public static func uRLToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_u_r_l_to_hex, input: self)
}

public static func uRLToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_u_r_l_to_json, input: self)
}

public static func uRLUrl(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_u_r_l_url, input: self)
}

public static func unitIntervalDenominator(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_unit_interval_denominator, input: self)
}

public static func unitIntervalFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_unit_interval_from_hex, input: input)
}

public static func unitIntervalFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_unit_interval_from_json, input: input)
}

public static func unitIntervalNew(numerator: OpaqueRustPointer<Numerator>, denominator: OpaqueRustPointer<Denominator>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_unit_interval_new, input1: numerator, input2: denominator)
}

public static func unitIntervalNumerator(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_unit_interval_numerator, input: self)
}

public static func unitIntervalToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_unit_interval_to_bytes, input: self)
}

public static func unitIntervalToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_unit_interval_to_hex, input: self)
}

public static func unitIntervalToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_unit_interval_to_json, input: self)
}

public static func updateCommitteeActionCommittee(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_update_committee_action_committee, input: self)
}

public static func updateCommitteeActionFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_update_committee_action_from_hex, input: input)
}

public static func updateCommitteeActionFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_update_committee_action_from_json, input: input)
}

public static func updateCommitteeActionGovActionId(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_update_committee_action_gov_action_id, input: self)
}

public static func updateCommitteeActionMembersToRemove(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_update_committee_action_members_to_remove, input: self)
}

public static func updateCommitteeActionNew(committee: OpaqueRustPointer<Committee>, memberstoremove: OpaqueRustPointer<MembersToRemove>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_update_committee_action_new, input1: committee, input2: memberstoremove)
}

public static func updateCommitteeActionToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_update_committee_action_to_bytes, input: self)
}

public static func updateCommitteeActionToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_update_committee_action_to_hex, input: self)
}

public static func updateCommitteeActionToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_update_committee_action_to_json, input: self)
}

public static func updateEpoch(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_update_epoch, input: self)
}

public static func updateFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_update_from_hex, input: input)
}

public static func updateFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_update_from_json, input: input)
}

public static func updateNew(proposedprotocolparameterupdates: OpaqueRustPointer<ProposedProtocolParameterUpdates>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_update_new
}

public static func updateProposedProtocolParameterUpdates(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_update_proposed_protocol_parameter_updates, input: self)
}

public static func updateToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_update_to_bytes, input: self)
}

public static func updateToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_update_to_hex, input: self)
}

public static func updateToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_update_to_json, input: self)
}

public static func vRFCertFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_v_r_f_cert_from_hex, input: input)
}

public static func vRFCertFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_v_r_f_cert_from_json, input: input)
}

public static func vRFCertOutput(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_v_r_f_cert_output, input: self)
}

public static func vRFCertProof(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_v_r_f_cert_proof, input: self)
}

public static func vRFCertToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_v_r_f_cert_to_bytes, input: self)
}

public static func vRFCertToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_v_r_f_cert_to_hex, input: self)
}

public static func vRFCertToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_v_r_f_cert_to_json, input: self)
}

public static func vRFKeyHashFromBech32(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_v_r_f_key_hash_from_bech32, input: input)
}

public static func vRFKeyHashFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_v_r_f_key_hash_from_hex, input: input)
}

public static func vRFKeyHashToBech32(self: OpaqueRustPointer<Self>, string2: String) throws -> String {
    return try callRustFunctionRPtrAndString(csl_bridge_v_r_f_key_hash_to_bech32, input: self, string: string2)
}

public static func vRFKeyHashToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_v_r_f_key_hash_to_bytes, input: self)
}

public static func vRFKeyHashToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_v_r_f_key_hash_to_hex, input: self)
}

public static func vRFVKeyFromBech32(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_v_r_f_v_key_from_bech32, input: input)
}

public static func vRFVKeyFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_v_r_f_v_key_from_hex, input: input)
}

public static func vRFVKeyToBech32(self: OpaqueRustPointer<Self>, string2: String) throws -> String {
    return try callRustFunctionRPtrAndString(csl_bridge_v_r_f_v_key_to_bech32, input: self, string: string2)
}

public static func vRFVKeyToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_v_r_f_v_key_to_bytes, input: self)
}

public static func vRFVKeyToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_v_r_f_v_key_to_hex, input: self)
}

public static func valueCheckedAdd(self: OpaqueRustPointer<Self>, rhs: OpaqueRustPointer<Rhs>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_value_checked_add, input1: self, input2: rhs)
}

public static func valueCheckedSub(self: OpaqueRustPointer<Self>, value: OpaqueRustPointer<Value>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_value_checked_sub, input1: self, input2: value)
}

public static func valueClampedSub(self: OpaqueRustPointer<Self>, value: OpaqueRustPointer<Value>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_value_clamped_sub, input1: self, input2: value)
}

public static func valueCoin(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_value_coin, input: self)
}

public static func valueCompare(self: OpaqueRustPointer<Self>, value: OpaqueRustPointer<Value>) throws -> Int64 {
    return try callRustFunctionTwoRPtrsForInt64(csl_bridge_value_compare, input1: self, input2: value)
}

public static func valueFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_value_from_hex, input: input)
}

public static func valueFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_value_from_json, input: input)
}

public static func valueIsZero(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_value_is_zero, input: self)
}

public static func valueMultiasset(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_value_multiasset, input: self)
}

public static func valueNew(coin: OpaqueRustPointer<Coin>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_value_new, input: coin)
}

public static func valueNewFromAssets(asset: OpaqueRustPointer<Asset>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_value_new_from_assets, input: asset)
}

public static func valueNewWithAssets(coin: OpaqueRustPointer<Coin>, asset: OpaqueRustPointer<Asset>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_value_new_with_assets, input1: coin, input2: asset)
}

public static func valueSetCoin(coin: OpaqueRustPointer<Coin>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_value_set_coin
}

public static func valueSetMultiasset(asset: OpaqueRustPointer<Asset>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_value_set_multiasset
}

public static func valueToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_value_to_bytes, input: self)
}

public static func valueToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_value_to_hex, input: self)
}

public static func valueToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_value_to_json, input: self)
}

public static func valueZero() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_value_zero)
}

public static func versionedBlockBlock(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_versioned_block_block, input: self)
}

public static func versionedBlockEra(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_versioned_block_era, input: self)
}

public static func versionedBlockFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_versioned_block_from_hex, input: input)
}

public static func versionedBlockFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_versioned_block_from_json, input: input)
}

public static func versionedBlockNew(block: OpaqueRustPointer<Block>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_versioned_block_new
}

public static func versionedBlockToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_versioned_block_to_bytes, input: self)
}

public static func versionedBlockToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_versioned_block_to_hex, input: self)
}

public static func versionedBlockToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_versioned_block_to_json, input: self)
}

public static func vkeyFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_vkey_from_hex, input: input)
}

public static func vkeyFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_vkey_from_json, input: input)
}

public static func vkeyNew(pk: OpaqueRustPointer<Pk>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_vkey_new, input: pk)
}

public static func vkeyPublicKey(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_vkey_public_key, input: self)
}

public static func vkeyToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_vkey_to_bytes, input: self)
}

public static func vkeyToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_vkey_to_hex, input: self)
}

public static func vkeyToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_vkey_to_json, input: self)
}

public static func vkeysAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_vkeys_add
}

public static func vkeysGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_vkeys_get
}

public static func vkeysLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_vkeys_len, input: self)
}

public static func vkeysNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_vkeys_new)
}

public static func vkeywitnessFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_vkeywitness_from_hex, input: input)
}

public static func vkeywitnessFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_vkeywitness_from_json, input: input)
}

public static func vkeywitnessNew(key: OpaqueRustPointer<Key>, signature: OpaqueRustPointer<Signature>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_vkeywitness_new, input1: key, input2: signature)
}

public static func vkeywitnessSignature(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_vkeywitness_signature, input: self)
}

public static func vkeywitnessToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_vkeywitness_to_bytes, input: self)
}

public static func vkeywitnessToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_vkeywitness_to_hex, input: self)
}

public static func vkeywitnessToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_vkeywitness_to_json, input: self)
}

public static func vkeywitnessVkey(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_vkeywitness_vkey, input: self)
}

public static func vkeywitnessesAdd(self: OpaqueRustPointer<Self>, witness: OpaqueRustPointer<Witness>) throws -> Bool {
    return try callRustFunctionTwoRPtrsForBool(csl_bridge_vkeywitnesses_add, input1: self, input2: witness)
}

public static func vkeywitnessesFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_vkeywitnesses_from_hex, input: input)
}

public static func vkeywitnessesFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_vkeywitnesses_from_json, input: input)
}

public static func vkeywitnessesGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_vkeywitnesses_get
}

public static func vkeywitnessesLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_vkeywitnesses_len, input: self)
}

public static func vkeywitnessesNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_vkeywitnesses_new)
}

public static func vkeywitnessesToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_vkeywitnesses_to_bytes, input: self)
}

public static func vkeywitnessesToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_vkeywitnesses_to_hex, input: self)
}

public static func vkeywitnessesToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_vkeywitnesses_to_json, input: self)
}

public static func voteDelegationDrep(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_vote_delegation_drep, input: self)
}

public static func voteDelegationFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_vote_delegation_from_hex, input: input)
}

public static func voteDelegationFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_vote_delegation_from_json, input: input)
}

public static func voteDelegationHasScriptCredentials(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_vote_delegation_has_script_credentials, input: self)
}

public static func voteDelegationNew(stake: OpaqueRustPointer<Stake>, drep: OpaqueRustPointer<Drep>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_vote_delegation_new, input1: stake, input2: drep)
}

public static func voteDelegationStakeCredential(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_vote_delegation_stake_credential, input: self)
}

public static func voteDelegationToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_vote_delegation_to_bytes, input: self)
}

public static func voteDelegationToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_vote_delegation_to_hex, input: self)
}

public static func voteDelegationToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_vote_delegation_to_json, input: self)
}

public static func voteRegistrationAndDelegationCoin(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_vote_registration_and_delegation_coin, input: self)
}

public static func voteRegistrationAndDelegationDrep(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_vote_registration_and_delegation_drep, input: self)
}

public static func voteRegistrationAndDelegationFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_vote_registration_and_delegation_from_hex, input: input)
}

public static func voteRegistrationAndDelegationFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_vote_registration_and_delegation_from_json, input: input)
}

public static func voteRegistrationAndDelegationHasScriptCredentials(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_vote_registration_and_delegation_has_script_credentials, input: self)
}

public static func voteRegistrationAndDelegationStakeCredential(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_vote_registration_and_delegation_stake_credential, input: self)
}

public static func voteRegistrationAndDelegationToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_vote_registration_and_delegation_to_bytes, input: self)
}

public static func voteRegistrationAndDelegationToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_vote_registration_and_delegation_to_hex, input: self)
}

public static func voteRegistrationAndDelegationToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_vote_registration_and_delegation_to_json, input: self)
}

public static func voterFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_voter_from_hex, input: input)
}

public static func voterFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_voter_from_json, input: input)
}

public static func voterHasScriptCredentials(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_voter_has_script_credentials, input: self)
}

public static func voterKind(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_voter_kind, input: self)
}

public static func voterNewConstitutionalCommitteeHotCredential(cred: OpaqueRustPointer<Cred>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voter_new_constitutional_committee_hot_credential, input: cred)
}

public static func voterNewDrepCredential(cred: OpaqueRustPointer<Cred>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voter_new_drep_credential, input: cred)
}

public static func voterNewStakePoolKeyHash(key: OpaqueRustPointer<Key>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voter_new_stake_pool_key_hash, input: key)
}

public static func voterToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_voter_to_bytes, input: self)
}

public static func voterToConstitutionalCommitteeHotCredential(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voter_to_constitutional_committee_hot_credential, input: self)
}

public static func voterToDrepCredential(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voter_to_drep_credential, input: self)
}

public static func voterToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_voter_to_hex, input: self)
}

public static func voterToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_voter_to_json, input: self)
}

public static func voterToKeyHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voter_to_key_hash, input: self)
}

public static func voterToStakePoolKeyHash(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voter_to_stake_pool_key_hash, input: self)
}

public static func votersAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_voters_add
}

public static func votersFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_voters_from_json, input: input)
}

public static func votersGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_voters_get
}

public static func votersLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_voters_len, input: self)
}

public static func votersNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_voters_new)
}

public static func votersToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_voters_to_json, input: self)
}

public static func votingBuilderBuild(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voting_builder_build, input: self)
}

public static func votingBuilderGetNativeScripts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voting_builder_get_native_scripts, input: self)
}

public static func votingBuilderGetPlutusWitnesses(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voting_builder_get_plutus_witnesses, input: self)
}

public static func votingBuilderGetRefInputs(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voting_builder_get_ref_inputs, input: self)
}

public static func votingBuilderHasPlutusScripts(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_voting_builder_has_plutus_scripts, input: self)
}

public static func votingBuilderNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_voting_builder_new)
}

public static func votingProcedureAnchor(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voting_procedure_anchor, input: self)
}

public static func votingProcedureFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_voting_procedure_from_hex, input: input)
}

public static func votingProcedureFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_voting_procedure_from_json, input: input)
}

public static func votingProcedureToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_voting_procedure_to_bytes, input: self)
}

public static func votingProcedureToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_voting_procedure_to_hex, input: self)
}

public static func votingProcedureToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_voting_procedure_to_json, input: self)
}

public static func votingProcedureVoteKind(self: OpaqueRustPointer<Self>) throws -> Int32 {
    return try callRustFunctionForInt32(csl_bridge_voting_procedure_vote_kind, input: self)
}

public static func votingProceduresFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_voting_procedures_from_hex, input: input)
}

public static func votingProceduresFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_voting_procedures_from_json, input: input)
}

public static func votingProceduresGetGovernanceActionIdsByVoter(self: OpaqueRustPointer<Self>, voter: OpaqueRustPointer<Voter>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_voting_procedures_get_governance_action_ids_by_voter, input1: self, input2: voter)
}

public static func votingProceduresGetVoters(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voting_procedures_get_voters, input: self)
}

public static func votingProceduresNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_voting_procedures_new)
}

public static func votingProceduresToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_voting_procedures_to_bytes, input: self)
}

public static func votingProceduresToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_voting_procedures_to_hex, input: self)
}

public static func votingProceduresToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_voting_procedures_to_json, input: self)
}

public static func votingProposalAnchor(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voting_proposal_anchor, input: self)
}

public static func votingProposalBuilderAdd(self: OpaqueRustPointer<Self>) throws -> Unknown {
    return try // TODO: Handle pattern rptr_to_unknown for csl_bridge_voting_proposal_builder_add
}

public static func votingProposalBuilderAddWithPlutusWitness(witness: OpaqueRustPointer<Witness>, witness: OpaqueRustPointer<Witness>) throws -> Unknown {
    return try // TODO: Handle pattern two_rptrs_to_unknown for csl_bridge_voting_proposal_builder_add_with_plutus_witness
}

public static func votingProposalBuilderBuild(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voting_proposal_builder_build, input: self)
}

public static func votingProposalBuilderGetPlutusWitnesses(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voting_proposal_builder_get_plutus_witnesses, input: self)
}

public static func votingProposalBuilderGetRefInputs(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voting_proposal_builder_get_ref_inputs, input: self)
}

public static func votingProposalBuilderHasPlutusScripts(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_voting_proposal_builder_has_plutus_scripts, input: self)
}

public static func votingProposalBuilderNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_voting_proposal_builder_new)
}

public static func votingProposalDeposit(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voting_proposal_deposit, input: self)
}

public static func votingProposalFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_voting_proposal_from_hex, input: input)
}

public static func votingProposalFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_voting_proposal_from_json, input: input)
}

public static func votingProposalGovernanceAction(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voting_proposal_governance_action, input: self)
}

public static func votingProposalRewardAccount(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voting_proposal_reward_account, input: self)
}

public static func votingProposalToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_voting_proposal_to_bytes, input: self)
}

public static func votingProposalToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_voting_proposal_to_hex, input: self)
}

public static func votingProposalToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_voting_proposal_to_json, input: self)
}

public static func votingProposalsAdd(self: OpaqueRustPointer<Self>, proposal: OpaqueRustPointer<Proposal>) throws -> Bool {
    return try callRustFunctionTwoRPtrsForBool(csl_bridge_voting_proposals_add, input1: self, input2: proposal)
}

public static func votingProposalsContains(self: OpaqueRustPointer<Self>, elem: OpaqueRustPointer<Elem>) throws -> Bool {
    return try callRustFunctionTwoRPtrsForBool(csl_bridge_voting_proposals_contains, input1: self, input2: elem)
}

public static func votingProposalsFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_voting_proposals_from_hex, input: input)
}

public static func votingProposalsFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_voting_proposals_from_json, input: input)
}

public static func votingProposalsGet(self: OpaqueRustPointer<Self>, value: Int64) throws -> OpaqueRustPointer<Unknown> {
    return try // TODO: Handle pattern rptr_and_int64_to_rptr for csl_bridge_voting_proposals_get
}

public static func votingProposalsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_voting_proposals_len, input: self)
}

public static func votingProposalsNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_voting_proposals_new)
}

public static func votingProposalsToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_voting_proposals_to_bytes, input: self)
}

public static func votingProposalsToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_voting_proposals_to_hex, input: self)
}

public static func votingProposalsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_voting_proposals_to_json, input: self)
}

public static func votingProposalsToOption(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_voting_proposals_to_option, input: self)
}

public static func withdrawalsBuilderAdd(coin: OpaqueRustPointer<Coin>, address: OpaqueRustPointer<Address>) throws -> Unknown {
    return try // TODO: Handle pattern two_rptrs_to_unknown for csl_bridge_withdrawals_builder_add
}

public static func withdrawalsBuilderBuild(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_withdrawals_builder_build, input: self)
}

public static func withdrawalsBuilderGetNativeScripts(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_withdrawals_builder_get_native_scripts, input: self)
}

public static func withdrawalsBuilderGetPlutusWitnesses(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_withdrawals_builder_get_plutus_witnesses, input: self)
}

public static func withdrawalsBuilderGetRefInputs(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_withdrawals_builder_get_ref_inputs, input: self)
}

public static func withdrawalsBuilderGetTotalWithdrawals(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_withdrawals_builder_get_total_withdrawals, input: self)
}

public static func withdrawalsBuilderHasPlutusScripts(self: OpaqueRustPointer<Self>) throws -> Bool {
    return try callRustFunctionForBool(csl_bridge_withdrawals_builder_has_plutus_scripts, input: self)
}

public static func withdrawalsBuilderNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_withdrawals_builder_new)
}

public static func withdrawalsFromHex(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_withdrawals_from_hex, input: input)
}

public static func withdrawalsFromJson(input: String) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunction(csl_bridge_withdrawals_from_json, input: input)
}

public static func withdrawalsGet(self: OpaqueRustPointer<Self>, key: OpaqueRustPointer<Key>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionTwoRPtrs(csl_bridge_withdrawals_get, input1: self, input2: key)
}

public static func withdrawalsKeys(self: OpaqueRustPointer<Self>) throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionRPtrToRPtr(csl_bridge_withdrawals_keys, input: self)
}

public static func withdrawalsLen(self: OpaqueRustPointer<Self>) throws -> Int64 {
    return try callRustFunctionForInt64(csl_bridge_withdrawals_len, input: self)
}

public static func withdrawalsNew() throws -> OpaqueRustPointer<Unknown> {
    return try callRustFunctionNoInput(csl_bridge_withdrawals_new)
}

public static func withdrawalsToBytes(self: OpaqueRustPointer<Self>) throws -> Data {
    return try callRustFunctionForData(csl_bridge_withdrawals_to_bytes, input: self)
}

public static func withdrawalsToHex(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_withdrawals_to_hex, input: self)
}

public static func withdrawalsToJson(self: OpaqueRustPointer<Self>) throws -> String {
    return try callRustFunctionForString(csl_bridge_withdrawals_to_json, input: self)
}

