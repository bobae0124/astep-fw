import pandas as pd

tsv_file = "input_pixels.tsv"
df = pd.read_csv(tsv_file, sep="\t", dtype=str)

recconfig = {}
for col in range(35):
    recconfig[f"col{col}"] = [38, 0]

def disable_pixel(value, row_index):
    return value | (1 << (row_index + 1))

def disable_whole_col():
    return int('1' * 36, 2) 

for _, row in df.iterrows():
    col_val = row['col']
    row_val = row['row']

    if col_val.isdigit() and row_val.isdigit():
        col = int(col_val)
        row_idx = int(row_val)
        if 0 <= col < 35 and 0 <= row_idx < 35:
            current = recconfig[f"col{col}"][1]
            recconfig[f"col{col}"][1] = disable_pixel(current, row_idx)

    elif col_val.isdigit() and row_val.lower() == "all":
        col = int(col_val)
        if 0 <= col < 35:
            recconfig[f"col{col}"][1] = disable_whole_col()

    elif col_val.lower() == "all" and row_val.isdigit():
        row_idx = int(row_val)
        if 0 <= row_idx < 35:
            for col in range(35):
                current = recconfig[f"col{col}"][1]
                recconfig[f"col{col}"][1] = disable_pixel(current, row_idx)

def format_bits(value):
    bit_str = f"{value:036b}"[::-1]
    blocks = [bit_str[i:i+5][::-1] for i in range(0, 36, 5)]
    return '0b' + '_'.join(blocks[::-1])

for col in range(35):
    col_name = f"col{col}"
    val = recconfig[col_name][1]
    formatted = format_bits(val)
    print(f"    {col_name}:              [38, {formatted}]")

