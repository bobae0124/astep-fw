import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import os
import re
from collections import defaultdict
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("list", help="input MatchingHitInfo csv list (e.g. w123q08.txt)")
args = parser.parse_args()

if not args.list:
    print("Please put a filelist; ls MatchingHitInfo*.csv > list.txt ; python3.12 plotquadchip.py list")
filename = args.list
print(f"Processing file: {filename}")

chip_counts = {i: defaultdict(int) for i in range(4)}
chip_tot_values = {i: defaultdict(list) for i in range(4)}

#filename='w112q06'
#filename='w101q12_200th300inj'
#filename='w101q12_200th300inj_except'
#filename='w112q06_200th300inj'
#filename='w112q06_200th400inj'
#with open('w101q12.txt', 'r') as f:
with open(filename+'.txt', 'r') as f:
    tsv_files = [line.strip() for line in f if line.strip()]

for file in tsv_files:
    match = re.search(r'(\d)c(\d+)r(\d+)', file)
    if match:
        chip_num = int(match.group(1))
        col_value = int(match.group(2))
        row_value = int(match.group(3))
#        print(f"{chip_num} / {col_value} / {row_value}")
        df = pd.read_csv(file, sep='\t')

        filtered_df = df[(df['col'] == col_value) & (df['row'] == row_value)]

        for _, row in filtered_df.iterrows():
            col = row['col']
            row_ = row['row']
            key = (col, row_)
            chip_counts[chip_num][key] += 1
            chip_tot_values[chip_num][key].append(row['avg_tot_us'])

# --- 1. Hit Map (hist2d) : floating max values --- #
fig, axes = plt.subplots(2, 2, figsize=(11, 10))
fig.suptitle('Quad-chip Hit Count Maps ('+filename+')', fontsize=18)

cmap = plt.cm.get_cmap('viridis').copy()
cmap.set_under('white')

for chip in range(4):
    row_idx = 1 if chip < 2 else 0
    col_idx = chip if chip < 2 else chip - 2
    ax = axes[row_idx, col_idx]

    data = chip_counts[chip]

    if data:
        cols, rows, counts = zip(*[(c, r, count) for (c, r), count in data.items()])
        total_hits = sum(counts)
        h = ax.hist2d(
            x=cols, y=rows, bins=35, range=[[0, 35], [0, 35]],
            #weights=counts, cmap='YlOrRd', cmin=1.0
            weights=counts, cmap=cmap, cmin=0.0001, vmin=0
        )
        ax.add_patch(plt.Rectangle((0,0),3,35,color='black',zorder=10))
        ax.set_title(f'Chip {chip}', fontweight='bold', fontsize=14)
        ax.set_xlabel('Col', fontweight='bold', fontsize=14)
        ax.set_ylabel('Row', fontweight='bold', fontsize=14)
        ax.set_xlim(0, 35)
        ax.set_ylim(0, 35)
        ax.set_xticks(np.arange(0,36,5))
        ax.set_yticks(np.arange(0,36,5))
        ax.xaxis.set_tick_params(labelsize=12)
        ax.yaxis.set_tick_params(labelsize=12)
        ax.grid(True)

#        ax.text(0.05, 0.95, f"Hits: {total_hits}", transform=ax.transAxes,
#                fontsize=12, fontweight='bold', va='top', ha='left',
#                bbox=dict(facecolor='white', edgecolor='black', boxstyle='round'))

        fig.colorbar(h[3], ax=ax).set_label(label='Hit Counts', weight='bold', size=12)
    else:
        ax.set_title(f'Chip {chip} (no data)', fontweight='bold', fontsize=14)
        ax.axis('off')

#axes[1, 4].axis('off')
plt.tight_layout(rect=[0, 0, 1, 0.95])
plt.savefig(filename+'_hit_count_hist2d_per_subplot.png', dpi=300)
plt.savefig(filename+'_hit_count_hist2d_per_subplot.pdf')
plt.close()

# --- 1-2. Hit Map (hist2d) : fix max values = 20; expected counts is 10~11/2s. check uniformity and noisy pixels--- #
fig, axes = plt.subplots(2, 2, figsize=(11, 10))
#fig.suptitle('Quad-chip Hit Count Maps ('+filename+')', fontsize=18)

cmap = plt.cm.get_cmap('viridis').copy()
cmap.set_under('white')

for chip in range(4):
    row_idx = 1 if chip < 2 else 0
    col_idx = chip if chip < 2 else chip - 2
    ax = axes[row_idx, col_idx]

    data = chip_counts[chip]

    if data:
        cols, rows, counts = zip(*[(c, r, count) for (c, r), count in data.items()])
        total_hits = sum(counts)
        h = ax.hist2d(
            x=cols, y=rows, bins=35, range=[[0, 35], [0, 35]],
            #weights=counts, cmap='YlOrRd', cmin=1.0
            weights=counts, cmap=cmap, cmin=0.0001, vmin=0, vmax=20
        )
        ax.add_patch(plt.Rectangle((0,0),3,35,color='black',zorder=10))
        ax.set_title(f'Chip {chip}', fontweight='bold', fontsize=20)
        ax.set_xlabel('Col', fontweight='bold', fontsize=20)
        ax.set_ylabel('Row', fontweight='bold', fontsize=20)
        ax.set_xlim(0, 35)
        ax.set_ylim(0, 35)
        ax.set_xticks(np.arange(0,36,5))
        ax.set_yticks(np.arange(0,36,5))
        ax.xaxis.set_tick_params(labelsize=14)
        ax.yaxis.set_tick_params(labelsize=14)
        ax.grid(True)

#        ax.text(0.05, 0.95, f"Hits: {total_hits}", transform=ax.transAxes,
#                fontsize=12, fontweight='bold', va='top', ha='left',
#                bbox=dict(facecolor='white', edgecolor='black', boxstyle='round'))

        fig.colorbar(h[3], ax=ax).set_label(label='Hit Counts', weight='bold', size=20)
    else:
        ax.set_title(f'Chip {chip} (no data)', fontweight='bold', fontsize=14)
        ax.axis('off')

#axes[1, 4].axis('off')
plt.tight_layout(rect=[0, 0, 1, 0.95])
plt.savefig(filename+'_hit_countmax20_hist2d_per_subplot.png', dpi=300)
plt.savefig(filename+'_hit_countmax20_hist2d_per_subplot.pdf')
plt.close()


# --- 2. avg_tot_us Map (hist2d) --- #
fig, axes = plt.subplots(2, 2, figsize=(11, 10))
#fig.suptitle('Quad-chip Avg.ToT Maps ('+filename+')', fontsize=18)


for chip in range(4):
    row_idx = 1 if chip < 2 else 0
    col_idx = chip if chip < 2 else chip - 2
    ax = axes[row_idx, col_idx]

    data = chip_tot_values[chip]
    if data:
        avg_vals = defaultdict(float)
        for (c, r), tot_list in data.items():
            avg_vals[(c, r)] = sum(tot_list) / len(tot_list)

        cols, rows, avg_tot = zip(*[(c, r, avg_vals[(c, r)]) for (c, r) in avg_vals])

        h = ax.hist2d(
            x=cols, y=rows, bins=35, range=[[0, 35], [0, 35]],
            weights=avg_tot, cmap=cmap, cmin=0.0001, vmin=0, vmax=20
        )
        ax.add_patch(plt.Rectangle((0,0),3,35,color='black',zorder=10))
        ax.set_title(f'Chip {chip}', fontweight='bold', fontsize=20)
        ax.set_xlabel('Col', fontweight='bold', fontsize=20)
        ax.set_ylabel('Row', fontweight='bold', fontsize=20)
        ax.set_xlim(0, 35)
        ax.set_ylim(0, 35)
        ax.set_xticks(np.arange(0,36,5))
        ax.set_yticks(np.arange(0,36,5))
        ax.xaxis.set_tick_params(labelsize=14)
        ax.yaxis.set_tick_params(labelsize=14)
        ax.grid(True)

        fig.colorbar(h[3], ax=ax).set_label(label='Avg.ToT [us]', weight='bold', size=20)
    else:
        ax.set_title(f'Chip {chip} (no data)', fontweight='bold', fontsize=14)
        ax.axis('off')

plt.tight_layout(rect=[0, 0, 1, 0.95])
plt.savefig(filename+'_avg_tot_us_hist2d_per_subplot.png', dpi=300)
plt.savefig(filename+'_avg_tot_us_hist2d_per_subplot.pdf')
plt.close()

	

