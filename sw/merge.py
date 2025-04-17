import sys
import os

if len(sys.argv) != 2:
    print("Usage: python merge_log.py <filename>")
    sys.exit(1)

input_filename = sys.argv[1]

base, ext = os.path.splitext(input_filename)
output_filename = f"{base}_merge{ext}"

merged_hex = ''
try:
    with open(input_filename, 'r') as file:
        for line in file:
            cleaned = line.strip().replace("b'", "").replace("'", "")
            merged_hex += cleaned

#    print(merged_hex)

    with open(output_filename, 'w') as outfile:
        outfile.write(merged_hex)

    print(f"Successfully saved merged content to '{output_filename}'.")

except FileNotFoundError:
    print(f"Error: File '{input_filename}' not found.")
    sys.exit(1)

