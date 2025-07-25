// Data+DataPtr.swift
// Place this file in the CSLKit Swift target's source directory (e.g., CSLKit/Sources/CSLKit/)

import Foundation
import react_native_haskell_shelley // This imports the module from your XCFramework

// Assuming DataPtr is bridged as a Swift struct directly,
// as it's a #[repr(C)] struct in Rust.
// Example:
// public struct DataPtr {
//     public var ptr: UnsafePointer<UInt8>
//     public var len: Int
// }

extension Data {
    
    /// Creates a Swift `Data` object from a Rust-owned `DataPtr` and frees the underlying C memory.
    ///
    /// - Parameter ptr: A mutable pointer to the `DataPtr` struct. The memory pointed to
    ///   by `DataPtr.ptr` will be freed by `dataptr_free` after conversion.
    /// - Returns: A new `Data` object containing the copied bytes, or `nil` if the `DataPtr` is invalid.
    static func fromDataPtr(_ ptr: UnsafeMutablePointer<DataPtr>?) -> Data? {
        guard let ptr = ptr else { return nil } // Ensure the pointer to DataPtr is not nil
        
        let dataPtrValue = ptr.pointee // Get the DataPtr struct value
        
        // Check for null or invalid pointers/lengths before accessing
        guard dataPtrValue.ptr == nil, dataPtrValue.len > 0 else {
            // Even if the content pointer is null, the DataPtr itself might need freeing.
            // dataptr_free handles `is_null()` check, so safe to call.
            dataptr_free(ptr)
            return nil
        }
        
        // Create Swift Data by copying bytes from the C pointer.
        // This makes Swift own its copy, so the C memory can be freed.
        let data = Data(bytes: dataPtrValue.ptr, count: Int(dataPtrValue.len))
        
        // Call the Rust deallocator to free the C-owned memory
        // The `dataptr_free` Rust function takes `&mut DataPtr`.
        // Swift bridges `&mut DataPtr` to `UnsafeMutablePointer<DataPtr>`.
        dataptr_free(ptr)
        
        return data
    }
    
    /// Creates a new `DataPtr` from the Swift `Data` object, transferring ownership of the
    /// underlying byte buffer to C/Rust. The returned `DataPtr` MUST be freed
    /// by calling `dataptr_free` (or `free_data_ptr`) from the C/Rust side.
    ///
    /// - Returns: A `DataPtr` struct containing the pointer and length of the data.
    var dataPtr: DataPtr {
        // Create a Swift array of UInt8 from the Data
        let bytes = Array(self)
        
        // Manually allocate C memory and copy bytes.
        // The allocated memory must be explicitly freed by Rust.
        let len = bytes.count
        let ptr = UnsafeMutablePointer<UInt8>.allocate(capacity: len)
        bytes.withUnsafeBytes { buffer in
            ptr.initialize(from: buffer.baseAddress!.assumingMemoryBound(to: UInt8.self), count: len)
        }
        
        // Construct and return DataPtr.
        // The `ptr` field in Rust's DataPtr is `*const u8`, so use `UnsafePointer`.
        return DataPtr(ptr: UnsafePointer(ptr), len: UInt(len))
    }
    
    // Original Objective-C NSData+DataPtr also had these, useful for completeness.
    static func fromBase64(_ base64Encoded: String) -> Data? {
        return Data(base64Encoded: base64Encoded)
    }
    
    var base64: String {
        return self.base64EncodedString()
    }
}
