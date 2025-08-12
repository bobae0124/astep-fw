import yaml
import numpy as np
import matplotlib.pyplot as plt
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("name", help="input yml file name (ex: w123q09_may28yml_chip4.yml )")
args = parser.parse_args()

if not args.name:
    print("Please put a yml file name ; python3.12 scripts/plotmaskmap.py filename")
filename = args.name
print(f"Processing file: {filename}")
prefix = filename[:7]
print(f"{prefix}")

filepath = f"scripts/config/{filename}"

with open(filepath, 'r') as f:  
    data = yaml.safe_load(f)

n_cols = 35
n_rows = 35  # 0~35

def to_int(x):
    if isinstance(x, int):
        return x
    s = str(x).replace('_', '')
    if s.startswith(('0b','0B')):
        return int(s[2:], 2)
    return int(s)


def build_mask_map(recconfig, n_rows=35):
    m = np.zeros((n_rows, n_cols), dtype=np.uint8)
    for col_name, val in recconfig.items():
        c = int(col_name.replace('col',''))
        if c >= n_cols:
            continue
        mask_val = to_int(val[1])
        bits = bin(mask_val)[2:].zfill(n_rows+1)[::-1]
        print(f"{bits}")
        bits = bits[1:]
        for r in range(n_rows):
            m[r, c] = int(bits[r])
    return m


mask_map_chip0 = build_mask_map(data['astropix3']['config_0']['recconfig'])
mask_map_chip1 = build_mask_map(data['astropix3']['config_1']['recconfig'])
mask_map_chip2 = build_mask_map(data['astropix3']['config_2']['recconfig'])
mask_map_chip3 = build_mask_map(data['astropix3']['config_3']['recconfig'])

fig, axs = plt.subplots(2, 2, figsize=(10, 10))
chip_maps = [
    [mask_map_chip2, mask_map_chip3],  # top row
    [mask_map_chip0, mask_map_chip1]   # bottom row
]

for i in range(2):
    for j in range(2):
        ax = axs[i][j]
        chip_mask = chip_maps[i][j]

        row_idx, col_idx = np.where(chip_mask == 1)
        weights = np.ones_like(row_idx)
        print(f"*-----chip{(i ^ 1) * 2 + j}-----*")
        print(f"row : {row_idx}")
        print(f"col : {col_idx}")
        print(f"mask: {weights}")
        h = ax.hist2d(
            col_idx,row_idx,
            bins=35,
            range=[[0, 35], [0, 35]],
            weights=weights,
            cmap='gray',
            cmin=0.1,
            cmax=1 
        )
        ax.set_title(f'Chip {(i ^ 1) * 2 + j}')
        ax.set_xlabel('Column')
        ax.set_ylabel('Row')
        ax.set_xticks(range(0, 36, 5))
        ax.set_yticks(range(0, 36, 5))
        ax.grid(True, color='gray', linestyle='--', linewidth=0.5, alpha=0.7)

fig.suptitle(f'Mask Maps ({prefix})')
plt.subplots_adjust(wspace=0.15, hspace=0.15, top=0.92)
plt.tight_layout()
plt.savefig(f"maskmap_{prefix}.pdf")



