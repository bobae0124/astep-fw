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
#prefix = filename[:7]
#print(f"{prefix}")

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
mask_map_chip4 = build_mask_map(data['astropix3']['config_4']['recconfig'])
mask_map_chip5 = build_mask_map(data['astropix3']['config_5']['recconfig'])
mask_map_chip6 = build_mask_map(data['astropix3']['config_6']['recconfig'])
mask_map_chip7 = build_mask_map(data['astropix3']['config_7']['recconfig'])
mask_map_chip8 = build_mask_map(data['astropix3']['config_8']['recconfig'])

fig, axs = plt.subplots(1, 9, figsize=(30, 4))  # 1x9 배열

chip_maps = [
    mask_map_chip0,
    mask_map_chip1,
    mask_map_chip2,
    mask_map_chip3,
    mask_map_chip4,
    mask_map_chip5,
    mask_map_chip6,
    mask_map_chip7,
    mask_map_chip8,
]
for chip_id, (ax, chip_mask) in enumerate(zip(axs, chip_maps)):
    row_idx, col_idx = np.where(chip_mask == 1)
    weights = np.ones_like(row_idx)

    print(f"*-----chip{chip_id}-----*")
    print(f"mask: {len(weights)}")
    mask=(len(weights)-(3*35))
    maskp=(len(weights)-(3*35))/(32*35)
    activep=1-((len(weights)-(3*35))/(32*35))
    print(f"#.mask pixel={mask},mask yield={maskp}, active yield={activep}")

    h = ax.hist2d(
        col_idx, row_idx,
        bins=35,
        range=[[0, 35], [0, 35]],
        weights=weights,
        cmap='gray',
        cmin=0.1,
        cmax=1
    )
    ax.set_title(f'Chip {chip_id}')
    ax.set_xlabel('Column')
    ax.set_ylabel('Row')
    ax.set_xticks(range(3, 34, 5))
    ax.set_yticks(range(0, 34, 5))
    ax.grid(True, color='gray', linestyle='--', linewidth=0.5, alpha=0.7)

fig.suptitle(f'Mask Maps ({filename})')
plt.subplots_adjust(wspace=0.15, hspace=0.15, top=0.92)
plt.tight_layout()
plt.savefig(f"maskmap_{filename}.pdf")


