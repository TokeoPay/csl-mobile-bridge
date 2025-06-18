#!/bin/bash
#
rm -rf tmp_files
python parse_header.py ../../rust/src/ios/bridge.rs >tmp 2>>errors
python split_tmp_to_swift.py
mv tmp_files/* ../Sources/CSLKit/.
