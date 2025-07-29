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

# First build the Rust Library - we will use the create_artifact.sh file to create the artifact bundle
cd CSLKit
./create_artifact.sh

cd build

# Check if the artifact bundle directory exists
if [ ! -d "react_native_haskell_shelley.artifactbundle" ]; then
    echo "Error: react_native_haskell_shelley.artifactbundle directory not found!"
    exit 1
fi

# Create the zip file
zip -r "$ZIP_FILE" react_native_haskell_shelley.artifactbundle

# Check if the zip file was created successfully
if [ ! -f "$ZIP_FILE" ]; then
    echo "Error: Failed to create zip file $ZIP_FILE"
    exit 1
fi

CHECKSUM=$(swift package compute-checksum "$ZIP_FILE")

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

# Copy the zip file to the current directory for gh release create
cp "CSLKit/build/$ZIP_FILE" .

# Create the release with the zip file
gh release create "$NEW_VERSION" \
    "$ZIP_FILE" \
    --title "Release $NEW_VERSION" \
    --notes "Pre-built binary for $NEW_VERSION." \
    --latest

# Clean up the copied file
rm "$ZIP_FILE"

