#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
import sys
import os
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# ---------------------------
# Robust file reader
# ---------------------------
def read_table_autodetect(path):
    encodings = ["utf-8", "utf-8-sig", "latin-1", "ISO-8859-1", "cp1252"]
    last_err = None
    for enc in encodings:
        try:
            df = pd.read_csv(path, sep=None, engine="python", encoding=enc)
            return df
        except Exception as e:
            last_err = e
            continue
    raise RuntimeError(f"Failed to read file with tried encodings {encodings}: {last_err}")

# ---------------------------
# Data prep
# ---------------------------
REQUIRED_COLS = [
    "readout","layer","chipID","col","row",
    "timestamp_col","timestamp_row","tot_us_col","tot_us_row","avg_tot_us"
]

def load_data(path):
    df = read_table_autodetect(path)

    missing = [c for c in REQUIRED_COLS if c not in df.columns]
    if missing:
        raise RuntimeError(f"Missing required columns: {missing}\nFound: {list(df.columns)}")

    for c in ["layer","chipID","col","row"]:
        df[c] = pd.to_numeric(df[c], errors="coerce").astype("Int64")
    for c in ["avg_tot_us","timestamp_col","timestamp_row","tot_us_col","tot_us_row"]:
        df[c] = pd.to_numeric(df[c], errors="coerce")

    df = df.dropna(subset=["layer","chipID","col","row"])
    return df

def make_counts_and_avg(df):
    dfpairc = (
        df[["layer","chipID","col","row"]]
        .value_counts()
        .reset_index(name="hits")
    )
    grouped_avg = (
        df.groupby(["layer","chipID","col","row"])["avg_tot_us"]
        .mean()
        .reset_index(name="avg")
    )
    return dfpairc, grouped_avg

# ---------------------------
# Exclusions
# ---------------------------
def parse_excludes(exclude_str):
    if not exclude_str:
        return []
    items = []
    for block in exclude_str.split(";"):
        block = block.strip()
        if not block:
            continue
        cond = {}
        for kv in block.split(","):
            if ":" in kv:
                k, v = kv.split(":", 1)
                k = k.strip()
                v = v.strip()
                if k in {"layer","chip","chipID","col","row"}:
                    try:
                        cond[k if k != "chip" else "chipID"] = int(v)
                    except:
                        pass
        if cond:
            items.append(cond)
    return items

def apply_excludes(df, excludes):
    if not excludes:
        return df
    mask = pd.Series([True]*len(df))
    for cond in excludes:
        m = pd.Series([True]*len(df))
        for k, v in cond.items():
            m &= (df[k] == v)
        mask &= ~m
    return df[mask]

# ---------------------------
# Plotting
# ---------------------------
def default_layer_chip_pairs(layers, chips):
    pairs = []
    for L in layers:
        for c in chips:
            pairs.append((L, c))
    return pairs

def plot_all(df, dfpairc, layer_chip_pairs, outpath,
             vmax=100, bins_xy=35, bins_tot=84, tot_range=(0,21),
             title="Pixel Hit Maps by Layer and Chip"):
    fig, ax = plt.subplots(nrows=4, ncols=5, figsize=(30, 25))
    fig.suptitle(title, fontsize=18)

    for idx, (layer, chip) in enumerate(layer_chip_pairs):
        if idx >= 10:
            break
        i = (idx)//5
        j = (idx)%5

        ax_map = ax[i, j]
        ax_hist = ax[i+2, j]

        sel_counts = dfpairc[(dfpairc["layer"] == layer) & (dfpairc["chipID"] == chip)]
        sel_all    = df[(df["layer"] == layer) & (df["chipID"] == chip)]

        h = ax_map.hist2d(
            x=sel_counts["col"],
            y=sel_counts["row"],
            bins=bins_xy,
            range=[[0, bins_xy], [0, bins_xy]],
            weights=sel_counts["hits"],
            cmap="YlOrRd",
            cmin=1,
            vmax=vmax
        )
        ax_map.set_title(f"Layer {layer}, Chip {chip}")
        ax_map.set_xlabel("col")
        ax_map.set_ylabel("row")
        ax_map.grid(True, alpha=0.3)
        cbar = fig.colorbar(h[3], ax=ax_map)
        cbar.set_label("Hit Count")

        ax_hist.hist(
            sel_all["avg_tot_us"].dropna(),
            bins=bins_tot,
            range=tot_range,
            edgecolor="black"
        )
        ax_hist.set_title(f"Layer {layer}, Chip {chip}")
        ax_hist.set_xlabel("ToT [us]")
        ax_hist.set_ylabel("Counts")
        ax_hist.grid(True, alpha=0.3)

    plt.tight_layout(rect=[0, 0, 1, 0.96])
    plt.savefig(outpath, dpi=200)
    print(f"[OK] Saved figure: {outpath}")

# ---------------------------
# CLI
# ---------------------------
def main():
    ap = argparse.ArgumentParser(description="Read hit TSV/CSV, summarize hits, and plot heatmaps + ToT histograms.")
    ap.add_argument("-i", "--input", required=True, help="Input TSV/CSV path")
    ap.add_argument("-o", "--outdir", default=".", help="Output directory (default=.)")
    ap.add_argument("--name", default="AstroPixv3", help="Name tag for output files")
    ap.add_argument("--layers", default="1", help="Layer list, e.g. 1 or 0,1,2")
    ap.add_argument("--chips", default="0-8", help="ChipID list, e.g. 0-8 or 0,1,2")
    ap.add_argument("--exclude", default="", help="Exclude conditions")
    ap.add_argument("--vmax", type=float, default=100, help="Heatmap colorbar upper limit")
    ap.add_argument("--bins_xy", type=int, default=35, help="2D heatmap bin size")
    ap.add_argument("--bins_tot", type=int, default=84, help="ToT histogram bins")
    ap.add_argument("--tot_min", type=float, default=0.0, help="ToT x-axis min")
    ap.add_argument("--tot_max", type=float, default=21.0, help="ToT x-axis max")
    ap.add_argument("--show-rows", type=int, default=20, help="Print top-N per-pixel rows (default 20)")
    ap.add_argument("--save-counts", action="store_true", help="Save per-pixel and per-(layer, chipID) hit counts as TSVs")
    args = ap.parse_args()

    layers = [int(x) for x in args.layers.split(",")]
    if "-" in args.chips:
        a, b = args.chips.split("-")
        chips = list(range(int(a), int(b)+1))
    else:
        chips = [int(x) for x in args.chips.split(",")]

    dffpair = load_data(args.input)

    excludes = parse_excludes(args.exclude)
    if excludes:
        before = len(dffpair)
        dffpair = apply_excludes(dffpair, excludes)
        after = len(dffpair)
        print(f"[INFO] Applied excludes: {before} → {after} rows")

    dfpairc, grouped_avg = make_counts_and_avg(dffpair)

    by_layer_chip = (
        dfpairc.groupby(["layer","chipID"], as_index=False)["hits"]
               .sum()
               .sort_values(["layer","chipID"])
    )

    total_hits = int(dfpairc["hits"].sum()) if not dfpairc.empty else 0
    print("\n=== Summary of Hits ===")
    print(f"Total hits across all layers/chips: {total_hits}")

    print("\nPer-pixel hit counts (sorted by hits):")
    if dfpairc.empty:
        print("[WARN] No per-pixel hit counts available.")
    else:
        print(
            dfpairc.sort_values("hits", ascending=False)
                   .head(args.show_rows)
                   .to_string(index=False)
        )

    print("\nPer-(layer, chipID) hit counts:")
    if by_layer_chip.empty:
        print("[WARN] No (layer, chipID) hit counts available.")
    else:
        print(by_layer_chip.to_string(index=False))

    # ---------------------------
    # Save summaries as CSV
    # --------------------------- # 9chip_{os.path.basename(args.input)}_{args.name}.png
    counts_csv = os.path.join(args.outdir, f"9chip_{os.path.basename(args.input)}_{args.name}_per_pixel_hits.csv")
    layerchip_csv = os.path.join(args.outdir, f"9chip_{os.path.basename(args.input)}_{args.name}_per_layer_chip_hits.csv")
#    full_csv = os.path.join(args.outdir, f"9chip_{os.path.basename(args.input)}_{args.name}_full_data.csv")

    # Save per-pixel and per-(layer, chipID) summaries
    dfpairc.to_csv(counts_csv, index=False)
    by_layer_chip.to_csv(layerchip_csv, index=False)

#    # Save full dataset (after exclude/filter)
#    dffpair.to_csv(full_csv, index=False)

    print(f"\n[OK] Saved per-pixel hit counts to: {counts_csv}")
    print(f"[OK] Saved per-(layer, chipID) hit counts to: {layerchip_csv}")
#    print(f"[OK] Saved full hit dataset to: {full_csv}")

#    # Optional: print all to console (be careful if file is large)
#    print("\n=== Full Hit Data (first 50 rows) ===")
#    print(dffpair.head(50).to_string(index=False))
#    print(f"\n[INFO] Total rows in full dataset: {len(dffpair)}")


    if args.save_counts and not dfpairc.empty:
        os.makedirs(args.outdir, exist_ok=True)
        out_counts = os.path.join(args.outdir, f"HitCounts_{os.path.basename(args.input)}.tsv")
        dfpairc.to_csv(out_counts, sep="\t", index=False)
        print(f"[OK] Saved per-pixel hit counts: {out_counts}")

        out_counts_lc = os.path.join(args.outdir, f"HitCounts_byLayerChip_{os.path.basename(args.input)}.tsv")
        by_layer_chip.to_csv(out_counts_lc, sep="\t", index=False)
        print(f"[OK] Saved per-(layer, chipID) hit counts: {out_counts_lc}")

    if grouped_avg.empty:
        print("[WARN] No matching hits to plot. Exiting.")
        sys.exit(0)

    layer_chip_pairs = default_layer_chip_pairs(layers, chips)
    os.makedirs(args.outdir, exist_ok=True)
    outpng = os.path.join(args.outdir, f"9chip_{os.path.basename(args.input)}_{args.name}.png")

    plot_all(
        dffpair, dfpairc, layer_chip_pairs,
        outpng,
        vmax=args.vmax,
        bins_xy=args.bins_xy,
        bins_tot=args.bins_tot,
        tot_range=(args.tot_min, args.tot_max)
    )

if __name__ == "__main__":
    main()

