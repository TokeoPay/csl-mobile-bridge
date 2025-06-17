#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# --- Configuration ---
export ARTIFACT_NAME="react_native_haskell_shelley"
export VERSION="1.0.0"

# --- Paths ---
export BUILD_DIR="build"
export ARTIFACT_BUNDLE_DIR="${BUILD_DIR}/${ARTIFACT_NAME}.artifactbundle"
export XCFRAMEWORK_PATH="${ARTIFACT_BUNDLE_DIR}/${ARTIFACT_NAME}.xcframework"

# --- Cleanup ---
echo "Cleaning up old build artifacts..."
rm -rf "$BUILD_DIR"
mkdir -p "$ARTIFACT_BUNDLE_DIR"

# --- Build Function ---
# IMPORTANT: This now assumes your build.sh can handle PLATFORM_NAME=macosx
build_for_platform() {
  local arch=$1
  local platform=$2
  local archive_path="${BUILD_DIR}/${platform}-${arch}"

  echo "--------------------------------------------------"
  echo "Building for platform: ${platform}, architecture: ${arch}"
  echo "--------------------------------------------------"

  export ARCHS="$arch"
  export PLATFORM_NAME="$platform"
  export CONFIGURATION="Release"
  export ROOT_DIR="$(dirname "$(pwd)")"
  # Note: This path might need to change if your macOS build is different
  export SRCROOT="$ROOT_DIR/ios"
  export CONFIGURATION_BUILD_DIR="${archive_path}/lib"
  export PODS_TARGET_SRCROOT="$ROOT_DIR"

  mkdir -p "$CONFIGURATION_BUILD_DIR"
  $ROOT_DIR/ios/build.sh

  local include_dir="${archive_path}/include"
  mkdir -p "$include_dir"

  mv "${CONFIGURATION_BUILD_DIR}/lib${ARTIFACT_NAME}.a" "${archive_path}/"
  mv "${CONFIGURATION_BUILD_DIR}/${ARTIFACT_NAME}.h" "${include_dir}/"
  rmdir "${CONFIGURATION_BUILD_DIR}"

  echo "module ${ARTIFACT_NAME} {
    header \"${ARTIFACT_NAME}.h\"
    export *
}" > "${include_dir}/module.modulemap"

  echo "Successfully built and staged slice at ${archive_path}"
}

# --- Build all required slices ---
# iOS
build_for_platform "arm64" "iphoneos"
build_for_platform "arm64" "iphonesimulator"
build_for_platform "x86_64" "iphonesimulator"
# --- NEW: Build for macOS ---
build_for_platform "arm64" "macosx"
build_for_platform "x86_64" "macosx"

# --- Combine simulator libraries with lipo ---
echo "--------------------------------------------------"
echo "Creating universal simulator library with lipo..."
echo "--------------------------------------------------"
SIM_ARM64_LIB="${BUILD_DIR}/iphonesimulator-arm64/lib${ARTIFACT_NAME}.a"
SIM_X86_64_LIB="${BUILD_DIR}/iphonesimulator-x86_64/lib${ARTIFACT_NAME}.a"
UNIVERSAL_SIM_DIR="${BUILD_DIR}/iphonesimulator-universal"
UNIVERSAL_SIM_LIB="${UNIVERSAL_SIM_DIR}/lib${ARTIFACT_NAME}.a"
mkdir -p "$UNIVERSAL_SIM_DIR"
lipo -create "$SIM_ARM64_LIB" "$SIM_X86_64_LIB" -output "$UNIVERSAL_SIM_LIB"
cp -R "${BUILD_DIR}/iphonesimulator-arm64/include" "${UNIVERSAL_SIM_DIR}/"
echo "Successfully created universal simulator library."

# --- NEW: Combine macOS libraries with lipo ---
echo "--------------------------------------------------"
echo "Creating universal macOS library with lipo..."
echo "--------------------------------------------------"
MACOS_ARM64_LIB="${BUILD_DIR}/macosx-arm64/lib${ARTIFACT_NAME}.a"
MACOS_X86_64_LIB="${BUILD_DIR}/macosx-x86_64/lib${ARTIFACT_NAME}.a"
UNIVERSAL_MACOS_DIR="${BUILD_DIR}/macosx-universal"
UNIVERSAL_MACOS_LIB="${UNIVERSAL_MACOS_DIR}/lib${ARTIFACT_NAME}.a"
mkdir -p "$UNIVERSAL_MACOS_DIR"
lipo -create "$MACOS_ARM64_LIB" "$MACOS_X86_64_LIB" -output "$UNIVERSAL_MACOS_LIB"
cp -R "${BUILD_DIR}/macosx-arm64/include" "${UNIVERSAL_MACOS_DIR}/"
echo "Successfully created universal macOS library."

# --- Create the XCFramework ---
echo "--------------------------------------------------"
echo "Creating XCFramework..."
echo "--------------------------------------------------"
xcodebuild -create-xcframework \
  -library "${BUILD_DIR}/iphoneos-arm64/lib${ARTIFACT_NAME}.a" \
  -headers "${BUILD_DIR}/iphoneos-arm64/include" \
  -library "$UNIVERSAL_SIM_LIB" \
  -headers "${UNIVERSAL_SIM_DIR}/include" \
  -library "$UNIVERSAL_MACOS_LIB" \
  -headers "${UNIVERSAL_MACOS_DIR}/include" \
  -output "$XCFRAMEWORK_PATH"

# --- Create the info.json manifest ---
# (This section remains unchanged)
echo "Creating info.json for the artifact bundle..."
cat > "${ARTIFACT_BUNDLE_DIR}/info.json" <<EOF
{
  "schemaVersion": "1.0",
  "artifacts": {
    "${ARTIFACT_NAME}": {
      "type": "xcframework",
      "version": "${VERSION}",
      "path": "${ARTIFACT_NAME}.xcframework"
    }
  }
}
EOF

echo "--------------------------------------------------"
echo "✅ Artifact bundle created successfully!"
echo "Path: ${ARTIFACT_BUNDLE_DIR}"
echo "--------------------------------------------------"