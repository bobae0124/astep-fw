import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import os
import re
from collections import defaultdict

# chip별 카운트 + avg_tot_us 값 저장
chip_counts = {i: defaultdict(int) for i in range(9)}
chip_tot_values = {i: defaultdict(list) for i in range(9)}

# 파일 리스트 읽기
with open('file_list.txt', 'r') as f:
    tsv_files = [line.strip() for line in f if line.strip()]

for file in tsv_files:
    match = re.search(r'(\d)c(\d+)r(\d+)', file)
    if match:
        chip_num = int(match.group(1))
        col_value = int(match.group(2))
        row_value = int(match.group(3))

        df = pd.read_csv(file, sep='\t')

        filtered_df = df[(df['col'] == col_value) & (df['row'] == row_value)]

        for _, row in filtered_df.iterrows():
            col = row['col']
            row_ = row['row']
            key = (col, row_)
            chip_counts[chip_num][key] += 1
            chip_tot_values[chip_num][key].append(row['avg_tot_us'])

# ===== 1️⃣ Hit Count Plot (hist2d) =====
fig, axes = plt.subplots(2, 5, figsize=(25, 10))
fig.suptitle('Chip-wise Hit Count Maps (Filtered Col/Row)', fontsize=18)

# viridis 컬러맵 복사 후 under 색 지정
cmap = plt.cm.get_cmap('viridis').copy()
cmap.set_under('white')

for chip in range(9):
    row_idx = 0 if chip < 5 else 1
    col_idx = chip if chip < 5 else chip - 5
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

#        # Hit count 표시
#        ax.text(0.05, 0.95, f"Hits: {total_hits}", transform=ax.transAxes,
#                fontsize=12, fontweight='bold', va='top', ha='left',
#                bbox=dict(facecolor='white', edgecolor='black', boxstyle='round'))

        # 개별 컬러바 추가
        fig.colorbar(h[3], ax=ax).set_label(label='Hit Counts', weight='bold', size=12)
    else:
        ax.set_title(f'Chip {chip} (no data)', fontweight='bold', fontsize=14)
        ax.axis('off')

axes[1, 4].axis('off')
plt.tight_layout(rect=[0, 0, 1, 0.95])
plt.savefig('chip_hit_count_hist2d_per_subplot.png', dpi=300)
plt.savefig('chip_hit_count_hist2d_per_subplot.pdf')
plt.close()

# ===== 2️⃣ avg_tot_us 평균 Plot (hist2d) =====
fig, axes = plt.subplots(2, 5, figsize=(25, 10))
fig.suptitle('Chip-wise avg_tot_us (Averaged) Maps (Filtered Col/Row)', fontsize=18)


for chip in range(9):
    row_idx = 0 if chip < 5 else 1
    col_idx = chip if chip < 5 else chip - 5
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

        # 개별 컬러바 추가
        fig.colorbar(h[3], ax=ax).set_label(label='Avg ToT [us]', weight='bold', size=12)
    else:
        ax.set_title(f'Chip {chip} (no data)', fontweight='bold', fontsize=14)
        ax.axis('off')

axes[1, 4].axis('off')
plt.tight_layout(rect=[0, 0, 1, 0.95])
plt.savefig('chip_avg_tot_us_hist2d_per_subplot.png', dpi=300)
plt.savefig('chip_avg_tot_us_hist2d_per_subplot.pdf')
plt.close()

	

