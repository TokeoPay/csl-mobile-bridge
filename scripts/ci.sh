#!/bin/bash

local current_dir=$(pwd)
local ZIP_FILE="react_native_haskell_shelley.artifactbundle.zip"
CURRENT_VERSION=$(git tag --sort='-v:refname' --list '[0-9]*.[0-9]*.[0-9]*' | head -n 1)

if [ -z "$CURRENT_VERSION" ]; then
  CURRENT_VERSION="0.1.0"
fi

# Bump the "middle" digit (minor version) by 1 for each release
IFS='.' read -r MAJOR MINOR PATCH <<< "$CURRENT_VERSION"
NEW_MINOR=$((MINOR + 1))
NEW_VERSION="${MAJOR}.${NEW_MINOR}.0"

# First build the Rust Library - we will use the create_atrifact.sh file to create the artifact bundle
cd CSLKit
./create_artifact.sh

cd build

zip -r react_native_haskell_shelley.artifactbundle.zip react_native_haskell_shelley.artifactbundle
CHECKSUM=$(swift package compute-checksum )

echo "Checksum: $CHECKSUM"

cd ..

ESCAPED_URL=$(echo "https://github.com/TokeoPay/csl-mobile-bridge/releases/download/${NEW_VERSION}/${ZIP_FILE}" | sed 's/\//\\\//g')

# Update Package.swift with the new checksum and calculated URL
sed -i '' 's/let haskellShelleyBinaryChecksum = ".*"/let haskellShelleyBinaryChecksum = "'$CHECKSUM'"/' Package.swift
sed -i '' 's|let haskellShelleyBinaryVersionURL = ".*"|let haskellShelleyBinaryVersionURL = "'$ESCAPED_URL'"|' Package.swift


cd $current_dir


