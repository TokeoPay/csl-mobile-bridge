# map_wrappers.awk
BEGIN {
    rust = ""
    swift = ""
}
# Match the comment line with the Rust function name
/\/\/ Swift Wrapper call to csl_bridge_/ {
    match($0, /\/\/ Swift Wrapper call to (csl_bridge_[a-zA-Z0-9_]+)/, arr)
    rust = arr[1]
    next
}
# Match the Swift function definition that follows
/^[ \t]*public static func / {
    match($0, /public static func ([a-zA-Z0-9_]+)/, arr)
    swift = arr[1]
    if (rust != "" && swift != "") {
        print rust " -> " swift
        rust = ""
        swift = ""
    }
}
