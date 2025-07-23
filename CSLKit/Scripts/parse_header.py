#!/usr/bin/env python3

import sys
import tree_sitter_rust as tsrust
import subprocess
import os
from tree_sitter import Language, Parser, Query, QueryCursor

# Create language and parser
rust_language = Language(tsrust.language())
parser = Parser(rust_language)

def find_functions(node):
    for child in node.children:
        if child.type == 'function_item':
            yield child
        else:
            yield from find_functions(child)


def map_result_type(c_type):
    """Map C result type to Swift type"""
    mapping = {
        'RPtr *': 'OpaqueRustPointer<T>',
        'CharPtr *': 'String',
        'DataPtr *': 'Data',
        'bool *': 'Bool',
        'int64_t *': 'Int64',
        'int32_t *': 'Int32'
    }
    return mapping.get(c_type, 'Unknown')



def c_name_to_swift_name(c_name):
    """Convert csl_bridge_address_from_bech32 -> addressFromBech32"""
    parts = c_name.replace('csl_bridge_', '').split('_')
    return parts[0] + ''.join(word.capitalize() for word in parts[1:])


def get_swift_param_definition(param, idx):
    """ 
    This depends on the Type of the parameter
        - String -> This will need to be case to a CharPtr
        - RPtr -> We will need to extract out the Pointer: so param['name'] + ".cPointer"
        - Data -> Will need to be converted to a DataPtr
        - bool -> Bool
        - int64_t -> Int64
        - int32_t -> Int32
        - etc.
    
    """
    if param['type'] == 'String':
        return f"var {param['name']}: String = {param['name']}"
    elif param['type'] == 'RPtr':
        return f"var {param['name']}: OpaqueRustPointer<CSL_{param['type']}> = OpaqueRustPointer<CSL_{param['type']}>(_0: nil)"
    elif param['type'] == 'Data':
        return f"var {param['name']}: Data = Data(_0: nil)"
    elif param['type'] == 'bool':
        return f"var {param['name']}: Bool = false"

    return f"var {param['name']}: {param['swiftType']} = {param['swiftType']}(_0: nil)"

def get_function_parameters(function_node):
    parameters = []
    params_node = function_node.child_by_field_name('parameters')
    
    if params_node:
        for child in params_node.children:
            if child.type == 'parameter':
                pattern = child.child_by_field_name('pattern')
                type_node = child.child_by_field_name('type')
                
                name = pattern.text.decode() if pattern else None
                type_name = type_node.text.decode() if type_node else None
                swift_type = map_rust_type_to_swift(type_name)
                parameters.append({
                    'name': name, 
                    'type': type_name, 
                    'swiftType': swift_type,
                    # 'swiftDefine': get_swift_param_definition(name, swift_type)
                })
    
    return parameters

def find_typed_ref_calls(function_node, rptr_param_names):
    typed_ref_calls = []
    
    # Start with the simplest possible query
    query = Query(rust_language, """
    (call_expression) @call
    """)
    
    body = function_node.child_by_field_name('body')
    if body:
        captures = QueryCursor(query).captures(body)
        # print(f"Captures: {captures}")
        
        # captures is a dict with capture_name -> [nodes]
        if 'call' in captures:
            for node in captures['call']:
                # Manually check if this is a typed_ref call
                call_text = node.text.decode()
                # print(f"Call expression: {call_text}")
                
                if 'typed_ref' in call_text:
                    # print(f"Found typed_ref call: {call_text}")
                    
                    # Now manually extract the parts we need
                    # Look for the pattern: variable.typed_ref::<Type>()
                    if '.typed_ref::<' in call_text:
                        # Extract variable name (before .typed_ref)
                        var_part = call_text.split('.typed_ref::')[0].strip()
                        var_name = var_part.split()[-1]  # Get last word
                        
                        # Extract type name (between < and >)
                        type_part = call_text.split('typed_ref::<')[1].split('>')[0]
                        
                        if var_name in rptr_param_names:
                            typed_ref_calls.append({
                                'variable': var_name,
                                'type': type_part,
                                'node': node
                            })
                            # print(f"Added: {var_name} -> {type_part}")
    
    return typed_ref_calls


def analyze_function_return_pattern(function_node):
    """
    Analyze if function uses handle_exception_result pattern
    """
    body = function_node.child_by_field_name('body')
    if not body:
        return None
    
    # Look for handle_exception_result calls
    query = Query(rust_language, """
    (call_expression
      function: (identifier) @func_name
      (#eq? @func_name "handle_exception_result")) @call
    """)
    
    captures = QueryCursor(query).captures(body)
    if 'call' in captures:
        call_node = captures['call'][0]  # Get first match
        # print(f"Found handle_exception_result call: {call_node.text.decode()}")
        return analyze_closure_return_type(call_node)
    
    return None

def analyze_closure_return_type(handle_exception_call):
    """
    Extract the Ok type from: Ok::<CharPtr, String>(result.into_cstr())
    """
    call_text = handle_exception_call.text.decode()
    
    # Look for Ok::<Type, Error> pattern
    if 'Ok::<' in call_text:
        # Extract the type between Ok::< and ,
        ok_part = call_text.split('Ok::<')[1]
        ok_type = ok_part.split(',')[0].strip()
        # print(f"Found Ok type: {ok_type}")
        return ok_type
    
    return None

def find_result_variable_info(function_node):
    """
    Find result variable and determine if we need to look deeper
    """
    # First check the overall return pattern
    return_type = analyze_function_return_pattern(function_node)
    # print(f"Function return type: {return_type}")
    
    # Now find the result variable
    query = Query(rust_language, """
    (let_declaration) @declaration
    """)
    
    body = function_node.child_by_field_name('body')
    if body:
        captures = QueryCursor(query).captures(body)
        
        if 'declaration' in captures:
            for decl_node in captures['declaration']:
                pattern = decl_node.child_by_field_name('pattern')
                if pattern and pattern.text.decode() == "result":
                    value = decl_node.child_by_field_name('value')
                    if value:
                        # print(f"Result assignment: {value_text}")
                        
                        # Determine the result type
                        result_type = parse_method_chain_type(value)
                        # print(f"Result variable type: {result_type}")
                        
                        return {
                            'function_return_type': return_type,
                            'result_variable_type': result_type,
                            'needs_rptr_analysis': return_type == 'RPtr' or 'RPtr' in str(return_type)
                        }
    
    return {
        'function_return_type': return_type,
        'result_variable_type': None,
        'needs_rptr_analysis': False
    }

def map_rust_type_to_swift(rust_type):
    """
    Map Rust types to Swift types
    """
    type_mapping = {
        'CharPtr': 'String',
        'RPtr': 'RPtr',  # Keep as RPtr for further analysis
        'String': 'String',
        'u32': 'UInt32',
        'u64': 'UInt64',
        'i32': 'Int32',
        'i64': 'Int64',
        'bool': 'Bool',
        '*const u8': 'Data',
        'usize': 'UInt64',
        # Add more mappings as needed
    }
    
    return type_mapping.get(rust_type, rust_type)

def find_result_variable_type_manual(function_node):
    """
    Complete analysis of function return types
    """
    info = find_result_variable_info(function_node)
    # print(f"Info: {info}")
    if info['needs_rptr_analysis']:
        if info['result_variable_type'] == '??': 
            return None
        # print("Result is RPtr - need to analyze typed_ref calls")
        # Use your existing typed_ref analysis here
        elif info['result_variable_type'] == 'Option<RPtr>':
            return f"OpaqueRustPointer<Types.CSL_{info['result_variable_type']}>?"
        else:
            return f"OpaqueRustPointer<Types.CSL_{info['result_variable_type']}>"
        # return analyze_rptr_type(typed_refs)
    else:
        final_type = info['function_return_type'] or info['result_variable_type']
        swift_type = map_rust_type_to_swift(final_type)
        # print(f"Final Swift type: {swift_type}")
        return swift_type

def find_typed_ref_calls_manual(function_node):
    query = Query(rust_language, """
    (let_declaration) @declaration
    """)
    
    body = function_node.child_by_field_name('body')
    # print(f"Body: {body}")
    if body:
        captures = QueryCursor(query).captures(body)
        # print(f"All let declarations: {captures}")
        
        if 'declaration' in captures:
            for decl_node in captures['declaration']:
                pattern = decl_node.child_by_field_name('pattern')
                if pattern:
                    var_name = pattern.text.decode()
                    # print(f"Variable name: {var_name}")
                    
                    if var_name == "result":
                        # print("Found result variable!")
                        
                        # Get the value (right-hand side of assignment)
                        value = decl_node.child_by_field_name('value')
                        if value:
                            # print(f"Value: {value_text}")
                            # print(f"Value type: {value.type}")
                            
                            # Parse the type from the assignment
                            inferred_type = parse_method_chain_type(value)
                            # print(f"Inferred type: {inferred_type}")
                            return inferred_type
                        
                        # Check if there's an explicit type annotation
                        type_annotation = decl_node.child_by_field_name('type')
                        if type_annotation:
                            explicit_type = type_annotation.text.decode()
                            # print(f"Explicit type: {explicit_type}")
                            return explicit_type
    return None


def debug_let_declarations(function_node):
    # Find all let declarations first
    query = Query(rust_language, """
    (let_declaration) @declaration
    """)
    
    body = function_node.child_by_field_name('body')
    if body:
        captures = QueryCursor(query).captures(body)
        print(f"All let declarations: {captures}")
        
        if 'declaration' in captures:
            for decl_node in captures['declaration']:
                print(f"Declaration: {decl_node.text.decode()}")
                print(f"Declaration sexp: {decl_node.text}")
                print("---")

def parse_method_chain_type(value):
    """
    Parse: Address::from_bech32(bech_str).into_result()?
    """
    # print(f"Parsing: {value_text}")
    value_text = value.text.decode()
    if '::' in value_text:
        # Get the base type (Address)
        base_type = value_text.split('::')[0].strip()
        # print(f"Base type: {base_type}")
        
        if '.into_result()?' in value_text:
            # The ? operator unwraps the Result, so result is of type Address
            return base_type
        elif '.into_result()' in value_text:
            # Without ?, it would be Result<Address, Error>
            return f"Result<{base_type}, Error>"
    elif value_text == "self_ref.payment_cred()":
        return "PaymentCred"
    elif value_text == "self_ref.abs()": 
        return "BigInt"
    elif value_text == "self_ref.ada_per_utxo_byte()": 
        return "BigNum"
    elif value_text == "self_ref.add_change_if_needed_with_datum(address, plutus_data).into_result()?": 
        return "Bool"
    elif value_text == "self_ref.add_change_if_needed(address).into_result()?": 
        return "Bool"
    elif value_text == "self_ref.add_inputs_from_and_change(inputs, strategy, change_config).into_result()?": 
        return "Bool"
    elif value_text == "self_ref.add(credential)": 
        return "Bool"
    elif value_text == "self_ref.add(elem)": 
        return "Bool"
    elif value_text == "self_ref.add(input)": 
        return "Bool"
    elif value_text == "self_ref.add(keyhash)": 
        return "Bool"
    elif value_text == "self_ref.add(other)": 
        return "Bool"
    elif value_text == "self_ref.add(proposal)": 
        return "Bool"
    elif value_text == "self_ref.add(witness)": 
     return "Bool"
    elif value_text == "self_ref.addr_keyhash()": 
       return "Ed25519KeyHash"
    elif value_text == "self_ref.address()": 
        return "Address"
    elif value_text == "self_ref.alternative()": 
        return "BigNum"
    elif value_text == "self_ref.amount()": 
        return "Value"
    elif value_text == "self_ref.anchor_data_hash()": 
        return "AnchorDataHash"
    elif value_text == "self_ref.anchor()": 
        return "Anchor"
    elif value_text == "self_ref.as_address(network).into_result()?": 
        return "Address"
    elif value_text == "self_ref.as_bytes()": 
        return "Data"
    elif value_text == "self_ref.as_bytes().into_result()?": 
        return "Data"
    elif value_text == "self_ref.as_committee_cold_resign()": 
        return "CommitteeColdResign"
    elif value_text == "self_ref.as_committee_hot_auth()": 
        return "CommitteeHotAuth"
    elif value_text == "self_ref.as_constr_plutus_data()": 
        return "ConstrPlutusData"
    elif value_text == "self_ref.as_drep_deregistration()": 
        return "DRepDeregistration"
    elif value_text == "self_ref.as_drep_registration()": 
        return "DRepRegistration"
    elif value_text == "self_ref.as_drep_update()": 
        return "DRepUpdate"
    elif value_text == "self_ref.as_genesis_key_delegation()": 
        return "GenesisKeyDelegation"
    elif value_text == "self_ref.as_hard_fork_initiation_action()": 
        return "HardForkInitiationAction"
    elif value_text == "self_ref.as_i32_or_fail().into_result()?": 
            return "??"
    elif value_text == "self_ref.as_i32_or_nothing()": 
        return "??"
    elif value_text == "self_ref.as_i32()": 
        return "??"
    elif value_text == "self_ref.as_info_action()": 
        return "??"
    elif value_text == "self_ref.as_int()": 
        return "??"
    elif value_text == "self_ref.as_int().into_result()?": 
        return "??"
    elif value_text == "self_ref.as_integer()": 
        return "??"
    elif value_text == "self_ref.as_list()": 
        return "??"
    elif value_text == "self_ref.as_list().into_result()?": 
        return "??"
    elif value_text == "self_ref.as_map()": 
        return "??"
    elif value_text == "self_ref.as_map().into_result()?": 
        return "??"
    elif value_text == "self_ref.as_move_instantaneous_rewards_cert()": 
        return "??"
    elif value_text == "self_ref.as_multi_host_name()": 
        return "??"
    elif value_text == "self_ref.as_negative_multiasset()": 
        return "??"
    elif value_text == "self_ref.as_negative()": 
        return "??"
    elif value_text == "self_ref.as_new_committee_action()": 
        return "??"
    elif value_text == "self_ref.as_new_constitution_action()": 
        return "??"
    elif value_text == "self_ref.as_no_confidence_action()": 
        return "??"
    elif value_text == "self_ref.as_parameter_change_action()": 
        return "??"
    elif value_text == "self_ref.as_pool_registration()": 
        return "??"
    elif value_text == "self_ref.as_pool_retirement()": 
        return "??"
    elif value_text == "self_ref.as_positive_multiasset()": 
        return "??"
    elif value_text == "self_ref.as_positive()": 
        return "??"
    elif value_text == "self_ref.as_reg_cert()": 
        return "??"
    elif value_text == "self_ref.as_script_all()": 
        return "??"
    elif value_text == "self_ref.as_script_any()": 
        return "??"
    elif value_text == "self_ref.as_script_n_of_k()": 
        return "??"
    elif value_text == "self_ref.as_script_pubkey()": 
        return "??"
    elif value_text == "self_ref.as_single_host_addr()": 
        return "??"
    elif value_text == "self_ref.as_single_host_name()": 
        return "??"
    elif value_text == "self_ref.as_stake_and_vote_delegation()": 
        return "??"
    elif value_text == "self_ref.as_stake_delegation()": 
        return "??"
    elif value_text == "self_ref.as_stake_deregistration()": 
        return "??"
    elif value_text == "self_ref.as_stake_registration_and_delegation()": 
        return "??"
    elif value_text == "self_ref.as_stake_registration()": 
        return "??"
    elif value_text == "self_ref.as_stake_vote_registration_and_delegation()": 
        return "??"
    elif value_text == "self_ref.as_text().into_result()?": 
        return "??"
    elif value_text == "self_ref.as_timelock_expiry()": 
        return "??"
    elif value_text == "self_ref.as_timelock_start()": 
        return "??"
    elif value_text == "self_ref.as_to_other_pot()": 
        return "??"
    elif value_text == "self_ref.as_to_stake_creds()": 
        return "??"
    elif value_text == "self_ref.as_treasury_withdrawals_action()": 
        return "??"
    elif value_text == "self_ref.as_u64()": 
        return "??"
    elif value_text == "self_ref.as_unreg_cert()": 
        return "??"
    elif value_text == "self_ref.as_vote_delegation()": 
        return "??"
    elif value_text == "self_ref.as_vote_registration_and_delegation()": 
        return "??"
    elif value_text == "self_ref.attributes()": 
        return "??"
    elif value_text == "self_ref.auxiliary_data_hash()": 
        return "??"
    elif value_text == "self_ref.auxiliary_data_set()": 
        return "??"
    elif value_text == "self_ref.auxiliary_data()": 
        return "??"
    elif value_text == "self_ref.block_body_hash()": 
        return "??"
    elif value_text == "self_ref.block_body_size()": 
        return "??"
    elif value_text == "self_ref.block_hash()": 
        return "??"
    elif value_text == "self_ref.block_number()": 
        return "??"
    elif value_text == "self_ref.block()": 
        return "??"
    elif value_text == "self_ref.body_signature()": 
        return "??"
    elif value_text == "self_ref.body()": 
        return "??"
    elif value_text == "self_ref.bootstraps()": 
        return "??"
    elif value_text == "self_ref.build_tx_unsafe().into_result()?": 
        return "??"
    elif value_text == "self_ref.build_tx().into_result()?": 
        return "??"
    elif value_text == "self_ref.build()": 
        return "??"
    elif value_text == "self_ref.build().into_result()?": 
        return "??"
    elif value_text == "self_ref.byron_address_kind()": 
        return "??"
    elif value_text == "self_ref.byron_protocol_magic()": 
        return "??"
    elif value_text == "self_ref.bytes()": 
        return "??"
    elif value_text == "self_ref.cert_index_bignum()": 
        return "??"
    elif value_text == "self_ref.cert_index().into_result()?": 
        return "??"
    elif value_text == "self_ref.certs()": 
        return "??"
    elif value_text == "self_ref.chain_code()": 
        return "??"
    elif value_text == "self_ref.chaincode()": 
        return "??"
    elif value_text == "self_ref.change_address(address)": 
        return "??"
    elif value_text == "self_ref.change_plutus_data(plutus_data)": 
        return "??"
    elif value_text == "self_ref.change_script_ref(script_ref)": 
        return "??"
    elif value_text == "self_ref.checked_add(other).into_result()?": 
        return "??"
    elif value_text == "self_ref.checked_add(rhs).into_result()?": 
        return "??"
    elif value_text == "self_ref.checked_mul(other).into_result()?": 
        return "??"
    elif value_text == "self_ref.checked_sub(other).into_result()?": 
        return "??"
    elif value_text == "self_ref.checked_sub(rhs_value).into_result()?": 
        return "??"
    elif value_text == "self_ref.clamped_sub(other)": 
        return "??"
    elif value_text == "self_ref.clamped_sub(rhs_value)": 
        return "??"
    elif value_text == "self_ref.coefficient()": 
        return "??"
    elif value_text == "self_ref.coin()": 
        return "??"
    elif value_text == "self_ref.coins_per_byte()": 
        return "??"
    elif value_text == "self_ref.coins_per_utxo_byte(coins_per_utxo_byte)": 
        return "??"
    elif value_text == "self_ref.collateral_percentage()": 
        return "??"
    elif value_text == "self_ref.collateral_return()": 
        return "??"
    elif value_text == "self_ref.collateral()": 
        return "??"
    elif value_text == "self_ref.committee_cold_credential()": 
        return "??"
    elif value_text == "self_ref.committee_hot_credential()": 
        return "??"
    elif value_text == "self_ref.committee_no_confidence()": 
        return "??"
    elif value_text == "self_ref.committee_normal()": 
        return "??"
    elif value_text == "self_ref.committee_term_limit()": 
        return "??"
    elif value_text == "self_ref.committee()": 
        return "??"
    elif value_text == "self_ref.compare(rhs_value)": 
        return "??"
    elif value_text == "self_ref.constant()": 
        return "??"
    elif value_text == "self_ref.constitution()": 
        return "??"
    elif value_text == "self_ref.contains(elem)": 
        return "??"
    elif value_text == "self_ref.cost_models()": 
        return "??"
    elif value_text == "self_ref.cost()": 
        return "??"
    elif value_text == "self_ref.current_treasury_value()": 
        return "??"
    elif value_text == "self_ref.d()": 
        return "??"
    elif value_text == "self_ref.data_hash()": 
        return "??"
    elif value_text == "self_ref.data()": 
        return "??"
    elif value_text == "self_ref.datum()": 
        return "??"
    elif value_text == "self_ref.deduplicate_explicit_ref_inputs_with_regular_inputs(deduplicate_explicit_ref_inputs_with_regular_inputs)": 
        return "??"
    elif value_text == "self_ref.denominator()": 
        return "??"
    elif value_text == "self_ref.deposit()": 
        return "??"
    elif value_text == "self_ref.derive(index)": 
        return "??"
    elif value_text == "self_ref.derive(index).into_result()?": 
        return "??"
    elif value_text == "self_ref.div_ceil(other)": 
        return "??"
    elif value_text == "self_ref.div_floor(other)": 
        return "??"
    elif value_text == "self_ref.dns_name()": 
        return "??"
    elif value_text == "self_ref.do_not_burn_extra_change(do_not_burn_extra_change)": 
        return "??"
    elif value_text == "self_ref.donation()": 
        return "??"
    elif value_text == "self_ref.drep_deposit()": 
        return "??"
    elif value_text == "self_ref.drep_inactivity_period()": 
        return "??"
    elif value_text == "self_ref.drep_voting_thresholds()": 
        return "??"
    elif value_text == "self_ref.drep()": 
        return "??"
    elif value_text == "self_ref.epoch()": 
        return "??"
    elif value_text == "self_ref.era()": 
        return "??"
    elif value_text == "self_ref.ex_unit_prices(ex_unit_prices)": 
        return "??"
    elif value_text == "self_ref.ex_units()": 
        return "??"
    elif value_text == "self_ref.execution_costs()": 
        return "??"
    elif value_text == "self_ref.expansion_rate()": 
        return "??"
    elif value_text == "self_ref.extra_entropy()": 
        return "??"
    elif value_text == "self_ref.fee_algo(fee_algo)": 
        return "??"
    elif value_text == "self_ref.fee_for_input(address, input, amount).into_result()?": 
        return "??"
    elif value_text == "self_ref.fee_for_output(output).into_result()?": 
        return "??"
    elif value_text == "self_ref.fee()": 
        return "??"
    elif value_text == "self_ref.full_size().into_result()?": 
        return "??"
    elif value_text == "self_ref.genesis_delegate_hash()": 
        return "??"
    elif value_text == "self_ref.genesishash()": 
        return "??"
    elif value_text == "self_ref.get_asset(policy_id, asset_name)": 
        return "??"
    elif value_text == "self_ref.get_auxiliary_data()": 
        return "??"
    elif value_text == "self_ref.get_certificates_deposit(pool_deposit, key_deposit).into_result()?": 
        return "??"
    elif value_text == "self_ref.get_certificates_refund(pool_deposit, key_deposit).into_result()?": 
        return "??"
    elif value_text == "self_ref.get_container_type()": 
        return "??"
    elif value_text == "self_ref.get_current_treasury_value()": 
        return "??"
    elif value_text == "self_ref.get_deposit().into_result()?": 
        return "??"
    elif value_text == "self_ref.get_donation()": 
        return "??"
    elif value_text == "self_ref.get_explicit_input().into_result()?": 
        return "??"
    elif value_text == "self_ref.get_explicit_output().into_result()?": 
        return "??"
    elif value_text == "self_ref.get_extra_witness_datums()": 
        return "??"
    elif value_text == "self_ref.get_fee_if_set()": 
        return "??"
    elif value_text == "self_ref.get_governance_action_ids_by_voter(voter)": 
        return "??"
    elif value_text == "self_ref.get_hash()": 
        return "??"
    elif value_text == "self_ref.get_i32(key).into_result()?": 
        return "??"
    elif value_text == "self_ref.get_implicit_input().into_result()?": 
        return "??"
    elif value_text == "self_ref.get_member_epoch(committee_cold_credential)": 
        return "??"
    elif value_text == "self_ref.get_mint_builder()": 
        return "??"
    elif value_text == "self_ref.get_mint_scripts()": 
        return "??"
    elif value_text == "self_ref.get_mint()": 
        return "??"
    elif value_text == "self_ref.get_native_input_scripts()": 
        return "??"
    elif value_text == "self_ref.get_native_scripts()": 
        return "??"
    elif value_text == "self_ref.get_plutus_input_scripts()": 
        return "??"
    elif value_text == "self_ref.get_plutus_witnesses()": 
        return "??"
    elif value_text == "self_ref.get_redeemers().into_result()?": 
        return "??"
    elif value_text == "self_ref.get_ref_inputs()": 
        return "??"
    elif value_text == "self_ref.get_ref_script_size()": 
        return "??"
    elif value_text == "self_ref.get_reference_inputs()": 
        return "??"
    elif value_text == "self_ref.get_required_signers()": 
        return "??"
    elif value_text == "self_ref.get_str(key).into_result()?": 
        return "??"
    elif value_text == "self_ref.get_total_input().into_result()?": 
        return "??"
    elif value_text == "self_ref.get_total_output().into_result()?": 
        return "??"
    elif value_text == "self_ref.get_total_withdrawals().into_result()?": 
        return "??"
    elif value_text == "self_ref.get_voters()": 
        return "??"
    elif value_text == "self_ref.get(cred)": 
        return "??"
    elif value_text == "self_ref.get(index)": 
        return "??"
    elif value_text == "self_ref.get(key)": 
        return "??"
    elif value_text == "self_ref.get(key).into_result()?": 
        return "??"
    elif value_text == "self_ref.get(operation).into_result()?": 
        return "??"
    elif value_text == "self_ref.get(policy_id)": 
        return "??"
    elif value_text == "self_ref.get(tx_index)": 
        return "??"
    elif value_text == "self_ref.get(voter, governance_action_id)": 
        return "??"
    elif value_text == "self_ref.gov_action_id()": 
        return "??"
    elif value_text == "self_ref.governance_action_deposit()": 
        return "??"
    elif value_text == "self_ref.governance_action_validity_period()": 
        return "??"
    elif value_text == "self_ref.governance_action()": 
        return "??"
    elif value_text == "self_ref.hard_fork_initiation()": 
        return "??"
    elif value_text == "self_ref.has_data_hash()": 
        return "??"
    elif value_text == "self_ref.has_native_scripts()": 
        return "??"
    elif value_text == "self_ref.has_nonce_and_leader_vrf()": 
        return "??"
    elif value_text == "self_ref.has_plutus_data()": 
        return "??"
    elif value_text == "self_ref.has_plutus_scripts()": 
        return "??"
    elif value_text == "self_ref.has_required_script_witness()": 
        return "??"
    elif value_text == "self_ref.has_script_credentials()": 
        return "??"
    elif value_text == "self_ref.has_script_hash()": 
        return "??"
    elif value_text == "self_ref.has_script_ref()": 
        return "??"
    elif value_text == "self_ref.has_vrf_result()": 
        return "??"
    elif value_text == "self_ref.has(key)": 
        return "??"
    elif value_text == "self_ref.hash()": 
        return "??"
    elif value_text == "self_ref.header_body()": 
        return "??"
    elif value_text == "self_ref.header()": 
        return "??"
    elif value_text == "self_ref.hot_vkey()": 
        return "??"
    elif value_text == "self_ref.increment()": 
        return "??"
    elif value_text == "self_ref.index()": 
        return "??"
    elif value_text == "self_ref.indices()": 
        return "??"
    elif value_text == "self_ref.input()": 
        return "??"
    elif value_text == "self_ref.inputs_option()": 
        return "??"
    elif value_text == "self_ref.inputs()": 
        return "??"
    elif value_text == "self_ref.insert_i32(key, value)": 
        return "??"
    elif value_text == "self_ref.insert_str(key, value).into_result()?": 
        return "??"
    elif value_text == "self_ref.insert(cred, delta)": 
        return "??"
    elif value_text == "self_ref.insert(key, value)": 
        return "??"
    elif value_text == "self_ref.insert(key, value).into_result()?": 
        return "??"
    elif value_text == "self_ref.insert(key, values)": 
        return "??"
    elif value_text == "self_ref.insert(policy_id, assets)": 
        return "??"
    elif value_text == "self_ref.insert(tx_index, data)": 
        return "??"
    elif value_text == "self_ref.invalid_transactions()": 
        return "??"
    elif value_text == "self_ref.ip()": 
        return "??"
    elif value_text == "self_ref.ipv4()": 
        return "??"
    elif value_text == "self_ref.ipv6()": 
        return "??"
    elif value_text == "self_ref.is_malformed()": 
        return "??"
    elif value_text == "self_ref.is_native_script()": 
        return "??"
    elif value_text == "self_ref.is_plutus_script()": 
        return "??"
    elif value_text == "self_ref.is_positive()": 
        return "??"
    elif value_text == "self_ref.is_valid()": 
        return "??"
    elif value_text == "self_ref.is_zero()": 
        return "??"
    elif value_text == "self_ref.issuer_vkey()": 
        return "??"
    elif value_text == "self_ref.kes_period()": 
        return "??"
    elif value_text == "self_ref.key_deposit()": 
        return "??"
    elif value_text == "self_ref.key_deposit(key_deposit)": 
        return "??"
    elif value_text == "self_ref.keys()": 
        return "??"
    elif value_text == "self_ref.kind()": 
        return "??"
    elif value_text == "self_ref.language_version()": 
        return "??"
    elif value_text == "self_ref.leader_vrf_or_nothing()": 
        return "??"
    elif value_text == "self_ref.len()": 
        return "??"
    elif value_text == "self_ref.less_than(rhs_value)": 
        return "??"
    elif value_text == "self_ref.major()": 
        return "??"
    elif value_text == "self_ref.margin()": 
        return "??"
    elif value_text == "self_ref.max_block_body_size()": 
        return "??"
    elif value_text == "self_ref.max_block_ex_units()": 
        return "??"
    elif value_text == "self_ref.max_block_header_size()": 
        return "??"
    elif value_text == "self_ref.max_collateral_inputs()": 
        return "??"
    elif value_text == "self_ref.max_epoch()": 
        return "??"
    elif value_text == "self_ref.max_tx_ex_units()": 
        return "??"
    elif value_text == "self_ref.max_tx_size()": 
        return "??"
    elif value_text == "self_ref.max_tx_size(max_tx_size)": 
        return "??"
    elif value_text == "self_ref.max_value_size()": 
        return "??"
    elif value_text == "self_ref.max_value_size(max_value_size)": 
        return "??"
    elif value_text == "self_ref.mem_price()": 
        return "??"
    elif value_text == "self_ref.mem()": 
        return "??"
    elif value_text == "self_ref.members_keys()": 
        return "??"
    elif value_text == "self_ref.members_to_remove()": 
        return "??"
    elif value_text == "self_ref.metadata()": 
        return "??"
    elif value_text == "self_ref.min_committee_size()": 
        return "??"
    elif value_text == "self_ref.min_fee().into_result()?": 
        return "??"
    elif value_text == "self_ref.min_pool_cost()": 
        return "??"
    elif value_text == "self_ref.minfee_a()": 
        return "??"
    elif value_text == "self_ref.minfee_b()": 
        return "??"
    elif value_text == "self_ref.minor()": 
        return "??"
    elif value_text == "self_ref.mint()": 
        return "??"
    elif value_text == "self_ref.motion_no_confidence()": 
        return "??"
    elif value_text == "self_ref.move_instantaneous_reward()": 
        return "??"
    elif value_text == "self_ref.mul(other)": 
        return "??"
    elif value_text == "self_ref.multiasset()": 
        return "??"
    elif value_text == "self_ref.n_opt()": 
        return "??"
    elif value_text == "self_ref.n()": 
        return "??"
    elif value_text == "self_ref.name()": 
        return "??"
    elif value_text == "self_ref.native_script()": 
        return "??"
    elif value_text == "self_ref.native_scripts()": 
        return "??"
    elif value_text == "self_ref.network_id()": 
        return "??"
    elif value_text == "self_ref.network_id().into_result()?": 
        return "??"
    elif value_text == "self_ref.next().into_result()?": 
        return "??"
    elif value_text == "self_ref.nonce_vrf_or_nothing()": 
        return "??"
    elif value_text == "self_ref.numerator()": 
        return "??"
    elif value_text == "self_ref.operational_cert()": 
        return "??"
    elif value_text == "self_ref.operator()": 
        return "??"
    elif value_text == "self_ref.original_bytes()": 
        return "??"
    elif value_text == "self_ref.output_sizes()": 
        return "??"
    elif value_text == "self_ref.output()": 
        return "??"
    elif value_text == "self_ref.outputs()": 
        return "??"
    elif value_text == "self_ref.pledge()": 
        return "??"
    elif value_text == "self_ref.plutus_data()": 
        return "??"
    elif value_text == "self_ref.plutus_script()": 
        return "??"
    elif value_text == "self_ref.plutus_scripts()": 
        return "??"
    elif value_text == "self_ref.policy_hash()": 
        return "??"
    elif value_text == "self_ref.pool_deposit()": 
        return "??"
    elif value_text == "self_ref.pool_deposit(pool_deposit)": 
        return "??"
    elif value_text == "self_ref.pool_keyhash()": 
        return "??"
    elif value_text == "self_ref.pool_metadata_hash()": 
        return "??"
    elif value_text == "self_ref.pool_metadata()": 
        return "??"
    elif value_text == "self_ref.pool_owners()": 
        return "??"
    elif value_text == "self_ref.pool_params()": 
        return "??"
    elif value_text == "self_ref.pool_pledge_influence()": 
        return "??"
    elif value_text == "self_ref.pool_voting_thresholds()": 
        return "??"
    elif value_text == "self_ref.port()": 
        return "??"
    elif value_text == "self_ref.pot()": 
        return "??"
    elif value_text == "self_ref.pow(exp)": 
        return "??"
    elif value_text == "self_ref.pp_economic_group()": 
        return "??"
    elif value_text == "self_ref.pp_governance_group()": 
        return "??"
    elif value_text == "self_ref.pp_network_group()": 
        return "??"
    elif value_text == "self_ref.pp_technical_group()": 
        return "??"
    elif value_text == "self_ref.prefer_alonzo_format()": 
        return "??"
    elif value_text == "self_ref.prefer_pure_change(prefer_pure_change)": 
        return "??"
    elif value_text == "self_ref.prev_hash()": 
        return "??"
    elif value_text == "self_ref.proof()": 
        return "??"
    elif value_text == "self_ref.proposed_protocol_parameter_updates()": 
        return "??"
    elif value_text == "self_ref.protocol_magic()": 
        return "??"
    elif value_text == "self_ref.protocol_param_updates()": 
        return "??"
    elif value_text == "self_ref.protocol_version()": 
        return "??"
    elif value_text == "self_ref.public_key()": 
        return "??"
    elif value_text == "self_ref.quorum_threshold()": 
        return "??"
    elif value_text == "self_ref.raw_auxiliary_data()": 
        return "??"
    elif value_text == "self_ref.raw_body()": 
        return "??"
    elif value_text == "self_ref.raw_witness_set()": 
        return "??"
    elif value_text == "self_ref.record()": 
        return "??"
    elif value_text == "self_ref.redeemer()": 
        return "??"
    elif value_text == "self_ref.redeemers()": 
        return "??"
    elif value_text == "self_ref.ref_script_coins_per_byte()": 
        return "??"
    elif value_text == "self_ref.ref_script_coins_per_byte(ref_script_coins_per_byte)": 
        return "??"
    elif value_text == "self_ref.reference_inputs()": 
        return "??"
    elif value_text == "self_ref.relays()": 
        return "??"
    elif value_text == "self_ref.required_signers()": 
        return "??"
    elif value_text == "self_ref.retain_language_versions(languages)": 
        return "??"
    elif value_text == "self_ref.reward_account()": 
        return "??"
    elif value_text == "self_ref.script_data_hash()": 
        return "??"
    elif value_text == "self_ref.script_hash()": 
        return "??"
    elif value_text == "self_ref.script_ref()": 
        return "??"
    elif value_text == "self_ref.script()": 
        return "??"
    elif value_text == "self_ref.security_relevant_threshold()": 
        return "??"
    elif value_text == "self_ref.sequence_number()": 
        return "??"
    elif value_text == "self_ref.serialization_format()": 
        return "??"
    elif value_text == "self_ref.set_asset(policy_id, asset_name, value)": 
        return "??"
    elif value_text == "self_ref.set(operation, cost).into_result()?": 
        return "??"
    elif value_text == "self_ref.sigma()": 
        return "??"
    elif value_text == "self_ref.sign(message)": 
        return "??"
    elif value_text == "self_ref.signature()": 
        return "??"
    elif value_text == "self_ref.size()": 
        return "??"
    elif value_text == "self_ref.slot_bignum()": 
        return "??"
    elif value_text == "self_ref.slot().into_result()?": 
        return "??"
    elif value_text == "self_ref.stake_cred()": 
        return "??"
    elif value_text == "self_ref.stake_credential()": 
        return "??"
    elif value_text == "self_ref.stake_pointer()": 
        return "??"
    elif value_text == "self_ref.step_price()": 
        return "??"
    elif value_text == "self_ref.steps()": 
        return "BigNum"
    elif value_text == "self_ref.sub(other)": 
        return "MultiAsset"
    elif value_text == "self_ref.sub(rhs_ma)": 
        return "MultiAsset"
    elif value_text == "self_ref.tag()": 
        return "RedeemerTag"
    elif value_text == "self_ref.to_128_xprv()": 
        return "XPrv"
    elif value_text == "self_ref.to_address()": 
        return "Address"
    elif value_text == "self_ref.to_base58()": 
        return "String"
    elif value_text == "self_ref.to_bech32()": 
        return "String"
    elif value_text == "self_ref.to_bech32(cip_129_format).into_result()?": 
        return "String"
    elif value_text == "self_ref.to_bech32(None).into_result()?": 
        return "String"
    elif value_text == "self_ref.to_bech32(prefix).into_result()?": 
        return "String"
    elif value_text == "self_ref.to_bech32(Some(prefix)).into_result()?": 
        return "String"
    elif value_text == "self_ref.to_bytes()": 
        return "Data"
    elif value_text == "self_ref.to_constitutional_committee_hot_credential()": 
        return "Credential"
    elif value_text == "self_ref.to_drep_credential()": 
        return "Credential"
    elif value_text == "self_ref.to_hex()": 
        return "String"
    elif value_text == "self_ref.to_json().into_result()?": 
        return "String"
    elif value_text == "self_ref.to_json(schema).into_result()?": 
        return "String"
    elif value_text == "self_ref.to_key_hash()": 
        return "KeyHash"
    elif value_text == "self_ref.to_keyhash()": 
        return "KeyHash"
    elif value_text == "self_ref.to_option()": 
        return "??"
    elif value_text == "self_ref.to_public()": 
        return "PublicKey"
    elif value_text == "self_ref.to_raw_key()": 
        return "RawKey"
    elif value_text == "self_ref.to_script_hash()": 
        return "ScriptHash"
    elif value_text == "self_ref.to_scripthash()": 
        return "ScriptHash"
    elif value_text == "self_ref.to_stake_pool_key_hash()": 
        return "StakePoolKeyHash"
    elif value_text == "self_ref.to_str()": 
        return "String"
    elif value_text == "self_ref.to_unwrapped_bytes()": 
        return "Data"
    elif value_text == "self_ref.total_collateral()": 
        return "BigNum"
    elif value_text == "self_ref.total_ex_units().into_result()?": 
        return "ExUnits"
    elif value_text == "self_ref.total_value().into_result()?": 
        return "Value"
    elif value_text == "self_ref.transaction_bodies()": 
        return "TransactionBodies"
    elif value_text == "self_ref.transaction_body()": 
        return "TransactionBody"
    elif value_text == "self_ref.transaction_hash()": 
        return "TransactionHash"
    elif value_text == "self_ref.transaction_id()": 
        return "TransactionHash"
    elif value_text == "self_ref.transaction_witness_sets()": 
        return "TransactionWitnessSets"
    elif value_text == "self_ref.treasury_growth_rate()": 
        return "UnitInterval"
    elif value_text == "self_ref.treasury_withdrawal()": 
        return "UnitInterval"
    elif value_text == "self_ref.ttl_bignum()": 
        return "BigNum"
    elif value_text == "self_ref.ttl().into_result()?": 
        return "BigNum"
    elif value_text == "self_ref.tx_hash()": 
        return "TransactionHash"
    elif value_text == "self_ref.tx_index_bignum()": 
        return "BigNum"
    elif value_text == "self_ref.tx_index().into_result()?": 
        return "UInt32"
    elif value_text == "self_ref.tx_witnesses_set()": 
        return "TransactionWitnessSet"
    elif value_text == "self_ref.update_constitution()": 
        return "UnitInterval"
    elif value_text == "self_ref.update()": 
        return "Update"
    elif value_text == "self_ref.url()": 
        return "String"
    elif value_text == "self_ref.validity_start_interval_bignum()": 
        return "BigNum"
    elif value_text == "self_ref.validity_start_interval().into_result()?": 
        return "BigNum"
    elif value_text == "self_ref.verify(data, signature)": 
        return "Bool"
    elif value_text == "self_ref.vkey()": 
        return "Vkey"
    elif value_text == "self_ref.vkeys()": 
        return "Vkeywitnesses"
    elif value_text == "self_ref.vote_kind()": 
        return "VoteKind"
    elif value_text == "self_ref.voting_credential()": 
        return "Credential"
    elif value_text == "self_ref.voting_procedures()": 
        return "VotingProcedures"
    elif value_text == "self_ref.voting_proposals()": 
        return "VotingProposals"
    elif value_text == "self_ref.vrf_keyhash()": 
        return "VRFKeyHash"
    elif value_text == "self_ref.vrf_result_or_nothing()": 
        return "VRFCert"
    elif value_text == "self_ref.vrf_vkey()": 
        return "VRFVKey"
    elif value_text == "self_ref.with_address(address)": 
        return "TransactionOutputBuilder"
    elif value_text == "self_ref.with_asset_and_min_required_coin_by_utxo_cost(multiasset, data_cost).into_result()?": 
        return "TransactionOutputAmountBuilder"
    elif value_text == "self_ref.with_coin_and_asset(coin, multiasset)": 
        return "TransactionOutputAmountBuilder"
    elif value_text == "self_ref.with_coin(coin)": 
        return "TransactionOutputAmountBuilder"
    elif value_text == "self_ref.with_data_hash(data_hash)": 
        return "TransactionOutputBuilder"
    elif value_text == "self_ref.with_plutus_data(data)": 
        return "TransactionOutputBuilder"
    elif value_text == "self_ref.with_script_ref(script_ref)": 
        return "TransactionOutputBuilder"
    elif value_text == "self_ref.with_value(amount)": 
        return "TransactionOutputAmountBuilder"
    elif value_text == "self_ref.withdrawals()": 
        return "TreasuryWithdrawals"
    elif value_text == "self_ref.witness_set()": 
        return "TransactionWitnessSet"
    else:
        print(f"No :: in {value_text}", file=sys.stderr)

    return None


def analyze_function(function_node, func_name, count):
    # Get parameters
    params = get_function_parameters(function_node)
        
    # Find RPtr parameters (excluding "result")
    rptr_params = [p['name'] for p in params 
                   if p['type'] == 'RPtr' and p['name'] != 'result']
    
    # Find typed_ref calls
    typed_refs = []
    if rptr_params:
        typed_refs = find_typed_ref_calls(function_node, rptr_params)
        # print("\ntyped_ref calls:")
        # for ref in typed_refs:
        #     print(f"  {ref['variable']}.typed_ref::<{ref['type']}>()")
    
    typed_refs_map = {ref['variable']: ref for ref in typed_refs}

    result_type = find_result_variable_type_manual(function_node)

    if params == []:
        print(f"No params for {func_name}", file=sys.stderr)
        return count
    
    if result_type == None:
        # print(f"No result type for {func_name}", file=sys.stderr)
        # return count
        result_type = "OpaqueRustPointer<Types.CSL_TxInputsBuilder>"

    paramLine = [] # Used to hold the Swift Input Parameters
    params_def = [] # Used to hold parameter casting
    params_val = [] # Used to pass the "casted" parameters to the Rust Function
 
    """
    I need to build the parameters for a function call.
    It will need to handle the following cases:
        - String -> This will need to be case to a CharPtr
        - RPtr -> We will need to extract out the Pointer: so param['name'] + ".cPointer"
        - Data -> This will need to be converted to two parameters:
            - DataPtr
            - DataLength
        - bool -> Bool
        - int64_t -> Int64
        - int32_t -> Int32
        - etc.

    The function return 2 strings, the first one being the parameter definitions and the second one being the parameter values.
    Where the parameter definitions is how Swift will define the parameters and the parameter values is how Swift will call the function.
    """
    skipNext = False

    hasResult = False

    for idx, param in enumerate(params):
        if (param['name'] == 'result'): # We will work oout the result parameter later
            hasResult = True
            continue
        if (param['name'] == 'error'): # Error is a fixed type, so we will not need to define it
            continue

        if skipNext:
            skipNext = False
            continue

        debug(f"Param: {param['name']}: {param['type']}: {param['swiftType']}")

        paramId = f"p{idx + 1}"
        if param['name'] in typed_refs_map: # This is a typed_ref call, so we will need to extract out the Pointer
            paramLine.append(f"{param['name']} {paramId}: OpaqueRustPointer<Types.CSL_{typed_refs_map[param['name']]['type']}>")
            params_def.append(f"var c_{paramId} = {paramId}.cPointer")
            params_val.append(f"c_{paramId}")
        
        elif param['swiftType'] == 'Data':
            paramLine.append(f"{param['name']} {paramId}: Data")
            params_def.append(f"var c_{paramId}_ptr = {paramId}.withUnsafeBytes {{ $0.bindMemory(to: UInt8.self).baseAddress }}!")
            params_def.append(f"var c_{paramId}_len = UInt({paramId}.count)")
            params_val.append(f"&c_{paramId}_ptr, c_{paramId}_len")
            skipNext = True

        elif param['swiftType'] == 'CharPtr':
            paramLine.append(f"{param['name']} {paramId}: String")
            params_def.append(f"var c_{paramId} = ({paramId} as NSString).utf8String")
            params_val.append(f"c_{paramId}")

        else:
            paramLine.append(f"{param['name']} {paramId}: {param['swiftType']}")
            params_val.append(f"{paramId}")

    paramLine = ", ".join(paramLine) if paramLine else ""

    params_def = "\n            ".join(params_def) if params_def else ""

    if hasResult:
        params_val.append("&result")
        
    params_val.append("&error")

    params_val = ", ".join(params_val) if params_val else ""


# bool *result
# CharPtr *result
# DataPtr *result
# int32_t *result
# int64_t *result
# RPtr *result
# RPtr vrf_result_rptr
#



    if hasResult:
        if "OpaqueRustPointer" in result_type:
            result_def = " = RPtr(_0: nil)"
            result_return = "OpaqueRustPointer(cPointer: result)"
        elif result_type == "String":
            result_def = ": CharPtr? = nil"
            result_return = "String(cString: result!)"
        elif result_type == "DataPtr":
            result_type = "Data"
            result_def = " = try DataPtr.init(fromData: Data())"
            result_return = "Data(dataPtr: result)"
        else:
            result_def = f" = {result_type}()"
            result_return = "result"

        result_def = f"var result {result_def}"
    else:
        result_def = ""
        result_return = "success"
        result_type = "Bool"

    if result_type != None:
        print(f"""
        // Swift Wrapper call to {func_name}
        public static func {c_name_to_swift_name(func_name)}({paramLine}) throws -> {result_type} {{
            {params_def}
            {result_def}
            var error: CharPtr? = nil
            let success = {func_name}({params_val})
            if success {{
                return {result_return}
            }} else {{
                throw createError(from: error)
            }}
        }}
        """)

        count += 1

        if count % 100 == 0:
            print(f"///// FILE BREAK /////")

    return count

DEBUG = False

def debug(msg):
    if DEBUG:
        print(msg)

def parse__rust_simple(rust_file):
    with open(rust_file, 'rb') as f:
        code = f.read()

    tree = parser.parse(code)
    root_node = tree.root_node

    count = 0
    for func in find_functions(root_node):
        name_node = func.child_by_field_name('name')
        if name_node is not None:
            func_name = code[name_node.start_byte:name_node.end_byte].decode()
            # Get only functions that start with csl_bridge_
            # if (func_name == 'csl_bridge_address_from_bytes'):
            if (func_name.startswith('csl_bridge_tx_inputs_builder')):
                if not function_already_exists(func_name):
                    count = analyze_function(func, func_name, count)

def function_already_exists(func_name):
       
    # Get the directory containing this script
    script_dir = os.path.dirname(os.path.abspath(__file__))
    # Go up to the project root and then into Sources
    sources_dir = os.path.join(script_dir, '..', 'Sources')
    
    try:
        # Use grep to search for the function name in Swift files
        result = subprocess.run(
            ['grep', '-r', func_name, sources_dir],
            capture_output=True,
            text=True,
            check=False  # Don't raise exception if grep finds nothing
        )
        
        # If grep found matches (exit code 0), the function already exists
        return result.returncode == 0
        
    except Exception as e:
        # If grep fails for any reason, assume function doesn't exist to be safe
        debug(f"Error checking if function exists: {e}")
        return False

def main():
    if len(sys.argv) != 2:
        print("Usage: python simple_parser.py <rust_file>")
        sys.exit(1)
    
    rust_file = sys.argv[1]
    parse__rust_simple(rust_file)
    
        
    # for func in functions:
    #     swift_return = func['swift_return']
    #     if 'OpaqueRustPointer<T>' in swift_return:
    #         # Try to infer the actual type from function name
    #         swift_return = infer_return_type_from_name(func['swift_name'])
        
    #     params_str = ', '.join(f'"{p}"' for p in func['swift_params'])
    #     print(f'@RustBinding("{func["c_name"]}") private static func _{func["swift_name"]}({params_str}) throws -> OpaqueRustPointer<Address> {{fatalError()}}')

        
        # print(f'    ("{func["swift_name"]}", "{swift_return}", [{params_str}], "{func["c_name"]}", "{func["pattern"]}"),')
    
    # print("]")
    
    # print(f"\n// Found {len(functions)} functions", file=sys.stderr)

if __name__ == '__main__':
    main()
