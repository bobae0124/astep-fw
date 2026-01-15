import pandas as pd
import matplotlib.pyplot as plt
import argparse

def plot_one_csv(df, tag, layer_chip_pairs, hitmax):
    fig, ax = plt.subplots(nrows=2, ncols=9, figsize=(45, 10))
    fig.suptitle(f'{tag}: Pixel Hit Maps (top) and ToT Distributions (bottom)', fontsize=22)

    layer_chip_pairs = [
    (1,0), (1,1), (1,2), (1,3), (1,4),(1,5), (1,6), (1,7), (1,8), 
    ]

    for idx, (layer, chip) in enumerate(layer_chip_pairs):
        i = idx // 9
        j = idx % 9

        df_sel = df[(df['layer'] == layer) & (df['chipID'] == chip)]
#        coords = df_sel[['col', 'row']].dropna()
#        counts = coords.value_counts().reset_index(name='hits')

        # Hit map
        h = ax[i, j].hist2d(
            x=df_sel['col'],
            y=df_sel['row'],
            bins=35,
            range=[[0, 35], [0, 35]],
            cmap='viridis',
            vmax=hitmax
        )
        ax[i, j].set_title(f'Layer {layer}, Chip {chip}')
        ax[i, j].set_xlabel('col')
        ax[i, j].set_ylabel('row')
        ax[i, j].grid()
        fig.colorbar(h[3], ax=ax[i, j]).set_label('Hit Count')

        # ToT histogram
        i_tot = i + 1
        ax[i_tot, j].hist(
            df_sel['avg_tot_us'].dropna(),
            bins=84,
            range=(0, 21),
            edgecolor='black'
        )
        ax[i_tot, j].set_title(f'Layer {layer}, Chip {chip}')
        ax[i_tot, j].set_xlabel('ToT [us]')
        ax[i_tot, j].set_ylabel('Counts')
        ax[i_tot, j].grid()

    plt.tight_layout(rect=[0, 0, 1, 0.96])
    outname = f"{tag}_9chip.png"
    plt.savefig(outname, dpi=200)
    print(f"{outname} created")
    plt.close(fig)

def main():
    parser = argparse.ArgumentParser(description="Draw per-CSV and accumulated plots")
    parser.add_argument("--file", help="single CSV file")
    parser.add_argument("--listfile", help="txt file containing list of CSV paths")
    parser.add_argument("--hitmax", required=True, help="max hit count")
    args = parser.parse_args()

    layer_chip_pairs = [(1, c) for c in range(9)]

    if args.file and args.listfile:
        raise ValueError("옵션 --file 과 --listfile 중 하나만 사용하세요.")

    if args.file:
        df = pd.read_csv(args.file,sep="\t")
        plot_one_csv(df, args.file, layer_chip_pairs, args.hitmax)

    elif args.listfile:
        with open(args.listfile, "r") as f:
            csv_files = [line.strip() for line in f if line.strip()]
        print("CSV files to process:", csv_files)

        for csv_file in csv_files:
            df = pd.read_csv(csv_file,sep="\t")
            plot_one_csv(df, csv_file, layer_chip_pairs, args.hitmax)

        df_all = pd.concat([pd.read_csv(f,sep="\t") for f in csv_files], ignore_index=True)
        plot_one_csv(df_all, args.listfile+"9chip_accumulated", layer_chip_pairs, args.hitmax)

    else:
        raise ValueError("반드시 --file 또는 --listfile 중 하나를 지정해야 합니다.")

if __name__ == "__main__":
    main()

