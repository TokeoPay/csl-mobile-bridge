// String+RPtr.swift
// Place this file in the CSLKit Swift target's source directory (e.g., CSLKit/Sources/CSLKit/)

import Foundation
import react_native_haskell_shelley // This imports the module from your XCFramework

// Assuming RPtr and CharPtr are correctly bridged.
// Typically, `*const c_char` (Rust's CharPtr) bridges to Swift's `UnsafePointer<CChar>`.
// CChar is an alias for Int8 on Apple platforms.

extension String {
    
    /// Creates a String from an RPtr by converting the RPtr to a hexadecimal string.
    /// - Parameter ptr: The RPtr to convert.
    /// - Returns: A String representation of the RPtr.
    static func fromRPtr(_ ptr: RPtr) -> String {
        let usizeValue = rptr_into_usize(ptr)
        return String(format: "%lx", usizeValue)
    }
    
    /// Creates a String from a C `char*` pointer returned by Rust and frees the C memory.
    ///
    /// - Parameter ptr: An `UnsafeMutablePointer<CharPtr?>` pointing to the `CharPtr`
    ///   that needs to be freed by Rust's `charptr_free`.
    /// - Returns: The Swift String.
    static func fromCharPtr(_ ptr: UnsafeMutablePointer<CharPtr?>) -> String {
        guard let cStringPointer = ptr.pointee else {
            charptr_free(ptr)
            fatalError("fromCharPtr received a null C string pointer. Check Rust side for non-null guarantees.")
        }
        
        // Convert C string to Swift String. `String(cString:)` expects `UnsafePointer<CChar>`.
        // `cStringPointer` is already `UnsafePointer<CChar>` (if CharPtr bridges correctly)
        // or a similar immutable pointer type.
        let swiftString = String(cString: cStringPointer)
        
        // Call the Rust deallocator to free the C-owned memory.
        // `charptr_free` expects `UnsafeMutablePointer<CharPtr?>`
        // which matches the type of the `ptr` parameter of this Swift function.
        // No explicit cast of `ptr` should be needed here if the type inference is correct.
        // If the error persists here after this, we might need a more direct type cast of `ptr` itself.
        charptr_free(ptr)
        
        return swiftString
    }
    
    /// Converts the Swift String to a C `char*` pointer that is owned by C and must be freed by `charptr_free`.
    /// - Returns: A C `char*` pointer representing the string's UTF8 content.
    var charPtr: CharPtr {
        let cStringData = self.data(using: .utf8)! // Get UTF8 data
        let cStringLength = cStringData.count + 1 // +1 for null terminator for null termination
        
        // Allocate C memory
        let cPtr = UnsafeMutablePointer<CChar>.allocate(capacity: cStringLength)
        
        // Copy data into the allocated C memory.
        // Cast `cPtr` to `UnsafeMutableRawPointer` and then `assumingMemoryBound(to: UInt8.self)`
        // because `copyBytes` operates on `UInt8` sequence.
        cStringData.copyBytes(to: UnsafeMutableRawPointer(cPtr).assumingMemoryBound(to: UInt8.self), count: cStringData.count)
        
        // Add null terminator
        cPtr[cStringLength - 1] = 0
        
        // Return as `UnsafePointer<CChar>` (matching `*const c_char` from Rust's `CharPtr`)
        return UnsafePointer(cPtr)
    }
    
    /// Converts the String (assumed to be a hexadecimal representation of a pointer) to an RPtr.
    /// - Returns: An RPtr representing the converted pointer value.
    var rPtr: RPtr {
        var ptrValue: UInt64 = 0
        let scanner = Scanner(string: self)
        _ = scanner.scanHexInt64(&ptrValue)
        
        // Assuming rptr_from_usize takes UIntPtr (which is UInt in Swift for 64-bit systems)
        return rptr_from_usize(UInt(ptrValue))
    }
}
