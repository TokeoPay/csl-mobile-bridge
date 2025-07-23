gawk '/^pub unsafe extern "C" fn csl_bridge_/ { match($0, /csl_bridge_[a-zA-Z0-9_]+/, arr); print arr[0]; }' ../../rust/src/ios/bridge.rs >rust_functions.txt
gawk '/let success = csl_bridge_/ { if (match($0, /csl_bridge_[a-zA-Z0-9_]+/, arr)) print arr[0]; }' ../Sources/CSLKit/*.swift >swift_mapped.txt
echo "Unmapped Rust bridge functions:"
grep -Fxv -f swift_mapped.txt rust_functions.txt
