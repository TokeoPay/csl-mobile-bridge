import os
from pathlib import Path

# Paths
input_file = Path(__file__).parent / 'tmp'
output_dir = Path(__file__).parent / 'tmp_files'

# Ensure output directory exists
output_dir.mkdir(exist_ok=True)

# Imports to include in each Swift file
imports = '''import Foundation\nimport react_native_haskell_shelley\nimport CSLKitObjC\n'''

# Read the input file
with open(input_file, 'r', encoding='utf-8') as f:
    content = f.read()

# Split on the file break marker
chunks = [chunk.strip() for chunk in content.split('///// FILE BREAK /////')]

# Write each chunk to a new Swift file
for idx, chunk in enumerate(chunks, 1):
    if not chunk:
        continue  # Skip empty chunks
    swift_code = f"""{imports}\nextension CSLKit {{
{chunk}\n}}
"""
    out_path = output_dir / f'CSLKit+Batch{idx}.swift'
    with open(out_path, 'w', encoding='utf-8') as out_f:
        out_f.write(swift_code)

print(f"Generated {len([c for c in chunks if c])} Swift files in {output_dir}") 