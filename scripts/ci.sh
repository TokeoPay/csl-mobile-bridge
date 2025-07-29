#!/bin/bash

current_dir=$(pwd)
ZIP_FILE="react_native_haskell_shelley.artifactbundle.zip"
CURRENT_VERSION=$(git tag --sort=-committerdate | head -1)

# Function to bump alpha version if present, otherwise bump minor version
bump_version() {
  local version="$1"
  # Remove leading 'v' if present
  version="${version#v}"

  if [[ "$version" =~ ^([0-9]+)\.([0-9]+)\.([0-9]+)-alpha\.([0-9]+)$ ]]; then
    MAJOR="${BASH_REMATCH[1]}"
    MINOR="${BASH_REMATCH[2]}"
    PATCH="${BASH_REMATCH[3]}"
    ALPHA="${BASH_REMATCH[4]}"
    NEW_ALPHA=$((ALPHA + 1))
    NEW_VERSION="v${MAJOR}.${MINOR}.${PATCH}-alpha.${NEW_ALPHA}"
  else
    # fallback to bumping minor version and resetting patch
    IFS='.' read -r MAJOR MINOR PATCH <<< "$version"
    NEW_MINOR=$((MINOR + 1))
    NEW_VERSION="v${MAJOR}.${NEW_MINOR}.0"
  fi
  echo "$NEW_VERSION"
}

NEW_VERSION=$(bump_version "$CURRENT_VERSION")
echo "New version: $NEW_VERSION"

# First build the Rust Library - we will use the create_atrifact.sh file to create the artifact bundle
cd CSLKit
./create_artifact.sh

cd build

zip -r react_native_haskell_shelley.artifactbundle.zip react_native_haskell_shelley.artifactbundle
CHECKSUM=$(swift package compute-checksum react_native_haskell_shelley.artifactbundle.zip)

echo "Checksum: $CHECKSUM"

cd $current_dir

ESCAPED_URL=$(echo "https://github.com/TokeoPay/csl-mobile-bridge/releases/download/${NEW_VERSION}/${ZIP_FILE}" | sed 's/\//\\\//g')

# Update Package.swift with the new checksum and calculated URL
sed -i '' 's/let haskellShelleyBinaryChecksum = ".*"/let haskellShelleyBinaryChecksum = "'$CHECKSUM'"/' Package.swift
sed -i '' 's|let haskellShelleyBinaryVersionURL = ".*"|let haskellShelleyBinaryVersionURL = "'$ESCAPED_URL'"|' Package.swift
sed -i '' 's/let haskellShelleyBinaryChecksum = ".*"/let haskellShelleyBinaryChecksum = "'$CHECKSUM'"/' CSLKit/Package.swift
sed -i '' 's|let haskellShelleyBinaryVersionURL = ".*"|let haskellShelleyBinaryVersionURL = "'$ESCAPED_URL'"|' CSLKit/Package.swift

git add -u
git commit -m "Bump version to $NEW_VERSION"
git tag $NEW_VERSION
git push origin $NEW_VERSION

gh release create "$NEW_VERSION" \
    "$ZIP_FILE" \
    --title "Release v$NEW_VERSION" \
    --notes "Pre-built binary for $NEW_VERSION." \
    --latest

gh release upload "$NEW_VERSION" "./CSLKit/build/$ZIP_FILE"

