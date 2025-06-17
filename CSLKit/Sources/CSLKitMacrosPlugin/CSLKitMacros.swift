//
//  RustBinding.swift
//  HaskellShelleyKit
//
//  Created by Gavin Harris on 16/6/2025.
//

/// A macro that generates Swift wrapper functions for Rust C bridge functions
///
/// Usage:
/// ```swift
/// @RustBinding("csl_bridge_address_from_bech32")
/// public static func addressFromBech32(addr: String) -> OpaqueRustPointer<Address>
/// ```
@attached(peer, names: arbitrary)
public macro RustBinding(_ fnName: String) = #externalMacro(
    module: "CSLKitMacrosPlugin",
    type: "RustBindingMacro"
)

/// Alternative macro for functions that can throw
@attached(peer, names: arbitrary)
public macro RustBindingThrows(_ fnName: String) = #externalMacro(
    module: "CSLKitMacrosPlugin",
    type: "RustBindingMacro"
)

@freestanding(declaration, names: arbitrary)
public macro RustFunctionCallers() = #externalMacro(module: "CSLKitMacrosPlugin", type: "RustFunctionCallersMacro")
