//
//  OpaqueRustPointer.swift
//  HaskellShelleyKit
//
//  Created by Gavin Harris on 15/6/2025.
//

import react_native_haskell_shelley
import CSLKitObjC

public final class OpaqueRustPointer<T> {
    /// The underlying, unsafe C pointer.
    internal var cPointer: RPtr
    
    /// Internal initializer to wrap the C pointer.
    internal init(cPointer: RPtr) {
        self.cPointer = cPointer
    }
    
    /// When the Swift object is deinitialized,
    /// we call the Rust function to free the memory.
    deinit {
        print("Deinit: Freeing Rust pointer for \(T.self)")
        rptr_free(&cPointer)
    }
}
