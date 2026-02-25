"""
02/2023 Jihee Kim added number of events from csv file of beam measurements
06/2024 Bobae Kim updated
python3.12 scripts/generate_event_display_bb_update.py -d June2_TBpreparation/ -if June2_ftbf_may28FWSW_masked3col_t200_10m___20240602_144719_offline.csv -n test
> create June2_ftbf_may28FWSW_masked3col_t200_10m___20240602_144719_offline.csv_proton120GeV_test_diffTS2_diffToT10.png
"""
import argparse
import csv
import matplotlib.pyplot as plt
import matplotlib
import pandas as pd
import numpy as np
import glob
import sys
import os
from matplotlib.colors import Normalize
import matplotlib as mpl
import asyncio
#from astep import astepRun
import astep
plt.style.use('classic')

def main(args):
    path = args.datadir
    #print(f"{args.datadir}, {args.inputfile}")

    pair = [] 
    # How many events are remained in one dataset
    tot_n_nans = 0
    tot_n_evts = 0
    n_evt_excluded = 0
    n_evt_used = 0

    # Loop over file
    #for f in all_files:
     # Read csv file
    f = args.datadir + args.inputfile
    print(f"Reading in {f}")
    #df = pd.read_csv(f,sep='\t')
    df = pd.read_csv(f)
    #print(f"Reading is done")

    # Count per run
    # Total number of rows
    n_all_rows = df.shape[0]
    print(f"n_all_rows={n_all_rows}")
    # Non-NaN rows
    n_non_nan_rows = df['readout'].count() 
    # NaN events
    n_nan_evts = n_all_rows - n_non_nan_rows
    # Skip rows with NAN
    df = df.apply(pd.to_numeric, errors='coerce')
    df = df.dropna()
    # Change float to int for readout col
    df['readout'] = df['readout'].astype('Int64')

    #add
    print(df.head())
    print(df.columns)
    if 'readout' in df.columns:
        if len(df['readout']) > 0:
            max_n_readouts = df['readout'].iloc[-1]
            print(f"Max readout value: {max_n_readouts}")
        else:
            print("The 'readout' column is empty.")
    else:
        print("The 'readout' column does not exist.")

    # Get last number of readouts/events per run
    max_readout_n = df['readout'].iloc[-1]
    
    # Count for summary if multiple runs are read in
    ni = 0
    for ievt in range(0, max_readout_n+1, 1):
        dff = df.loc[(df['readout'] == ievt)] 
        if dff.empty:
            continue
        else:
            ni += 1
    n_evts = ni + n_nan_evts
    tot_n_evts += n_evts
    tot_n_nans += n_nan_evts

    # Loop over readouts/events
    for ievt in range(0, max_readout_n+1, 1):
        # Collect one event
        dff = df.loc[(df['readout'] == ievt) & (df['payload'] == 4) ]
        # Check if it's empty
        if dff.empty:
            continue

        # Match col and row to find hit pixel
        else:
            n_evt_used += 1
            # List column info of pixel within one event
            dffcol = dff.loc[dff['isCol'] == True]
            # List row info of pixel within one event
            dffrow = dff.loc[dff['isCol'] == False]
            # Matching conditions: timestamp and time-over-threshold (ToT)
            timestamp_diff = args.timestampdiff
            tot_time_limit = args.totdiff
            # Loop over col and row info to find a pair to define a pixel
            for indc in dffcol.index:
                for indr in dffrow.index:
                    if dffcol['tot_us'][indc] == 0 or dffrow['tot_us'][indr] ==0:
                        continue
				#col0-3 skip
                    if ( dffcol['location'][indc] < 3 ):
                            continue
                    if (dffcol['location'][indc] > 34 or dffrow['location'][indr] > 34):
                        continue
                    if (dffcol['layer'][indc] == 0 or dffrow['layer'][indr] == 0): # use layer1,2,3
                        continue
                    if (dffcol['layer'][indc] > 4 or dffrow['layer'][indr] > 4): # use layer1,2,3
                        continue
                    if (dffcol['chipID'][indc] > 4 or dffrow['chipID'][indr] > 4): # use chipid 0,1,2,3
                        continue
                    if (dffcol['layer'][indc] != dffrow['layer'][indr] ): #same layer
                        continue
                    if (dffcol['chipID'][indc] != dffrow['chipID'][indr] ): #same chipid
                        continue
                    if (abs(dffcol['timestamp'][indc] - dffrow['timestamp'][indr]) < timestamp_diff) & (abs(dffcol['tot_us'][indc] - dffrow['tot_us'][indr])/dffcol['tot_us'][indc]*100 < tot_time_limit):
                        #print(f"[Matched] layer c{dffcol['layer'][indc]},r{dffrow['layer'][indr]}; chipid c{dffcol['chipID'][indc]},r{dffrow['chipID'][indr]}; col.location, row.location = {dffcol['location'][indc]},{dffrow['location'][indr]}; {dffcol['tot_us'][indc]},{dffrow['tot_us'][indr]}")
                        # Record hit pixels per event
                        average_tot = ((dffcol['tot_us'][indc] + dffrow['tot_us'][indr])/2)
                        #pair.append([dffcol['readout'][indc], dffcol['location'][indc], dffrow['location'][indr], dffcol['timestamp'][indc], dffrow['timestamp'][indr], dffcol['tot_us'][indc], dffrow['tot_us'][indr], ((dffcol['tot_us'][indc] + dffrow['tot_us'][indr])/2)])
                        pair.append([dffcol['readout'][indc],dffcol['layer'][indc],dffcol['chipID'][indc], dffcol['location'][indc], dffrow['location'][indr], dffcol['timestamp'][indc], dffrow['timestamp'][indr], dffcol['tot_us'][indc], dffrow['tot_us'][indr], ((dffcol['tot_us'][indc] + dffrow['tot_us'][indr])/2), dffcol['fpga_ts'][indc], dffrow['fpga_ts'][indr]])
                        dffrow = dffrow.drop(indr)
                        break
#        pairevt = pd.DataFrame(pair, columns=['readout','layer','chipID','col','row','timestamp_col', 'timestamp_row', 'tot_us_col', 'tot_us_row', 'avg_tot_us'])
#        ppairevt = pairevt[['layer','chipID','col','row','timestamp_col','avg_tot_us']].value_counts().reset_index(name='hits')
#        print(f"{ievt} readout ----------------------")
#        print(f"{ppairevt}")
    print("... Matching is done!")
    ######################################################################################################
    ##### Summary of how many events being used ###################################################
    nevents = '%.2f' % ((n_evt_used/(tot_n_evts)) * 100.)
    nnanevents = '%.2f' % ((tot_n_nans/(tot_n_evts)) * 100.)
    n_empty = tot_n_evts - n_evt_used - tot_n_nans
    nemptyevents = '%.2f' % ((n_empty/(tot_n_evts)) * 100.)
    print("Summary:")
    print(f"{n_evt_used} of {tot_n_evts} events were processed...")
    print(f"***** Matching hit: {len(pair)} *****")
    ###############################################################################################
     
    ##### Create hit pixel dataframes #######################################################
    # Hit pixel information for all events
    #dffpair = pd.DataFrame(pair, columns=['readout', 'col', 'row','timestamp_col', 'timestamp_row', 'tot_us_col', 'tot_us_row', 'avg_tot_us'])
    dffpair = pd.DataFrame(pair, columns=['readout','layer','chipID','col','row','timestamp_col', 'timestamp_row', 'tot_us_col', 'tot_us_row', 'avg_tot_us','fpga_ts_col','fpga_ts_row'])
    dffpair.to_csv(f"MatchingHitinfo_{args.inputfile}", sep='\t', index=False)
    # Create dataframe for number of hits 
    dfpair = dffpair[['layer','chipID','col','row']].copy()
    dfpairc = dfpair[['layer','chipID','col','row']].value_counts().reset_index(name='hits')
    # How many hits are collected and shown in a plot
    print(f"{dfpairc}")
    nhits = dfpairc['hits'].sum()
    # ---- Save CSV of hit map counts ---- #
    hit_summary_csv = f"{args.outdir}/HitSummary_{args.inputfile}_{args.name}.csv"
    dfpairc.to_csv(hit_summary_csv, sep='\t', index=False)
    print(f"Saved hit summary → {hit_summary_csv}")

    # mean of avg_tot_us, each col, row
    grouped_avg = dffpair.groupby(['layer','chipID','col', 'row'])['avg_tot_us'].mean().reset_index(name='avg')
    print(f"average_tot = {grouped_avg}")

    if grouped_avg.empty:
        print("no maching hit at all. exit code")
        sys.exit()
    
    # Generate Plot - Pixel hits
    #fig, (ax1, ax2) = plt.subplots(ncols=2, figsize=(20, 8))
#    fig, ax = plt.subplots(row, col, figsize=(20, 10))
#    for irow in range(0, row):
#        for icol in range(0, col):
#            for axis in ['top','bottom','left','right']:
#                ax[irow, icol].spines[axis].set_linewidth(1.5)
#
 # ---- Hit map plots for each (layer, chipID) ---- #
    layer_chip_pairs = [
        (1,2), (1,3), (2,2), (2,3), (3,2), (3,3),
        (1,0), (1,1), (2,0), (2,1), (3,0), (3,1)
    ]
    
    fig, ax = plt.subplots(nrows=2, ncols=6, figsize=(30, 10))
    fig.suptitle('Pixel Hit Maps by Layer and Chip', fontsize=18)
    
    for idx, (layer, chip) in enumerate(layer_chip_pairs):
        i =(idx) //6
        j =(idx) %6
        ax_ij = ax[i, j]
    
        df_sel = dfpairc[(dfpairc['layer'] == layer) & (dfpairc['chipID'] == chip)]

        if df_sel.empty:
            ax_ij.text(0.5, 0.5, 'No data', ha='center', va='center')
            ax_ij.set_title(f'Layer {layer}, Chip {chip}')
            ax_ij.set_xlabel('Column Number')
            ax_ij.set_ylabel('Row Number')
            ax_ij.grid()
            continue
    
        h = ax_ij.hist2d(
            x=df_sel['col'],
            y=df_sel['row'],
            bins=35,
            range=[[0, 35], [0, 35]],
            weights=df_sel['hits'],
            cmap='viridis'
        )
    
        ax_ij.set_title(f'Layer {layer}, Chip {chip}')
        ax_ij.set_xlabel('Column Number')
        ax_ij.set_ylabel('Row Number')
        ax_ij.grid()
    
        cbar = fig.colorbar(h[3], ax=ax_ij)
        cbar.set_label('Hit Count')
    
    plt.tight_layout(rect=[0, 0, 1, 0.96])
    plt.savefig(f"{args.outdir}/3layerQuad_{args.inputfile}_{args.name}_diffTS{args.timestampdiff}_diffToT{args.totdiff}.png")
    print(f"3layerQuad_{args.inputfile}_{args.name}_diffTS{args.timestampdiff}_diffToT{args.totdiff}.png was created...")
    plt.show()

 # ---- fixed MAX. (-ht) Hit map plots for each (layer, chipID) ---- #
    layer_chip_pairs = [
        (1,2), (1,3), (2,2), (2,3), (3,2), (3,3),
        (1,0), (1,1), (2,0), (2,1), (3,0), (3,1)
    ]
    
    fig, ax = plt.subplots(nrows=2, ncols=6, figsize=(30, 10))
    fig.suptitle('Pixel Hit Maps by Layer and Chip', fontsize=18)
    
    for idx, (layer, chip) in enumerate(layer_chip_pairs):
        i =(idx) //6
        j =(idx) %6
        ax_ij = ax[i, j]
    
        df_sel = dfpairc[(dfpairc['layer'] == layer) & (dfpairc['chipID'] == chip)]

        if df_sel.empty:
            ax_ij.text(0.5, 0.5, 'No data', ha='center', va='center')
            ax_ij.set_title(f'Layer {layer}, Chip {chip}')
            ax_ij.set_xlabel('Column Number')
            ax_ij.set_ylabel('Row Number')
            ax_ij.grid()
            continue
    
        h = ax_ij.hist2d(
            x=df_sel['col'],
            y=df_sel['row'],
            bins=35,
            range=[[0, 35], [0, 35]],
            weights=df_sel['hits'],
            cmap='viridis',
            vmin=0,
            vmax=args.hitmapmax
        )
    
        ax_ij.set_title(f'Layer {layer}, Chip {chip}')
        ax_ij.set_xlabel('Column Number')
        ax_ij.set_ylabel('Row Number')
        ax_ij.grid()
    
        cbar = fig.colorbar(h[3], ax=ax_ij)
        cbar.set_label('Hit Count')
        cbar.set_label(f'Hit Count (max={args.hitmapmax})')
    
    plt.tight_layout(rect=[0, 0, 1, 0.96])
    plt.savefig(f"{args.outdir}/3layerQuad_MaxHitmap{args.hitmapmax}_{args.inputfile}_{args.name}_diffTS{args.timestampdiff}_diffToT{args.totdiff}.png")
    print(f"3layerQuad_{args.inputfile}_MaxHitmap{args.hitmapmax}_{args.name}_diffTS{args.timestampdiff}_diffToT{args.totdiff}.png was created...")
    plt.show()

 # ---- ToT distribution plots for each (layer, chipID) ---- #
    fig_tot, ax_tot = plt.subplots(nrows=2, ncols=6, figsize=(30, 10))
    fig_tot.suptitle('Average ToT Distributions by Layer and Chip', fontsize=18)

    for idx, (layer, chip) in enumerate(layer_chip_pairs):
        i = idx // 6
        j = idx % 6
        ax_ij = ax_tot[i, j]

        df_sel_tot = dffpair[(dffpair['layer'] == layer) & (dffpair['chipID'] == chip)]

        if df_sel_tot.empty:
            ax_ij.text(0.5, 0.5, 'No data', ha='center', va='center')
            ax_ij.set_title(f'Layer {layer}, Chip {chip}')
            ax_ij.set_xlabel('avg ToT [µs]')
            ax_ij.set_ylabel('Entries')
            ax_ij.grid()
            continue

        ax_ij.hist(df_sel_tot['avg_tot_us'], bins=88, range=(0, 22))
        ax_ij.set_title(f'Layer {layer}, Chip {chip}')
        ax_ij.set_xlabel('avg ToT [µs]')
        ax_ij.set_ylabel('Entries')
        ax_ij.grid()

    plt.tight_layout(rect=[0, 0, 1, 0.96])
    tot_png_name = f"{args.outdir}/3layerQuad_TOT_{args.inputfile}_{args.name}_diffTS{args.timestampdiff}_diffToT{args.totdiff}.png"
    plt.savefig(tot_png_name)
    print(f"{os.path.basename(tot_png_name)} was created...")
    # plt.show()  # optional, only if you want to display this as well


#    p1 = ax[0, 0].hist2d(x=dfpairc['col'], y=dfpairc['row'], bins=35, range=[[0,35],[0,35]], weights=dfpairc['hits'], cmap='YlOrRd', cmin=1.0)
#    fig.colorbar(p1[3], ax=ax[0, 0]).set_label(label='Hit Counts', weight='bold', size=14)
#    ax[0,0].grid()
#    ax[0, 0].set_xlabel('Col', fontweight = 'bold', fontsize=14)
#    ax[0, 0].set_ylabel('Row', fontweight = 'bold', fontsize=14)
#    ax[0, 0].xaxis.set_tick_params(labelsize = 14)
#    ax[0, 0].yaxis.set_tick_params(labelsize = 14)
#
#
#    # Text
#    ax[0, 0].set_title(f"layer1/chip2 (w112q06)", fontweight = 'bold', fontsize=14)
#    ax[0, 1].set_title(f"layer1/chip3 (w112q06)", fontweight = 'bold', fontsize=14)
#    ax[0, 2].set_title(f"layer2/chip2 (w101q04)", fontweight = 'bold', fontsize=14)
#    ax[0, 3].set_title(f"layer2/chip3 (w101q04)", fontweight = 'bold', fontsize=14)
#    ax[0, 4].set_title(f"layer3/chip2 (w101q12)", fontweight = 'bold', fontsize=14)
#    ax[0, 5].set_title(f"layer3/chip3 (w101q12)", fontweight = 'bold', fontsize=14)
#    ax[1, 0].set_title(f"layer1/chip0 (w112q06)", fontweight = 'bold', fontsize=14)
#    ax[1, 1].set_title(f"layer1/chip1 (w112q06)", fontweight = 'bold', fontsize=14)
#    ax[1, 2].set_title(f"layer2/chip0 (w101q04)", fontweight = 'bold', fontsize=14)
#    ax[1, 3].set_title(f"layer2/chip1 (w101q04)", fontweight = 'bold', fontsize=14)
#    ax[1, 4].set_title(f"layer3/chip0 (w101q12)", fontweight = 'bold', fontsize=14)
#    ax[1, 5].set_title(f"layer3/chip1 (w101q12)", fontweight = 'bold', fontsize=14)
#
#    plt.savefig(f"{args.outdir}/{args.inputfile}_{args.beaminfo}_{args.name}_diffTS{args.timestampdiff}_diffToT{args.totdiff}.png")
#    print(f"{args.inputfile}_{args.beaminfo}_{args.name}_diffTS{args.timestampdiff}_diffToT{args.totdiff}.png was created...")
#    # Draw Plot
#    plt.show()

    # END OF PROGRAM
    
if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Astropix Driver Code')
    parser.add_argument('-n', '--name', default='AstroPixv3', required=False,
                    help='chip ID that can be used in name of output file (default=APSw06s01_TB0624)')

#    parser.add_argument('-l','--runnolist', nargs='+', required=True,
#                    help = 'List run number(s) you would like to see')

    parser.add_argument('-o', '--outdir', default='.', required=False,
                    help='output directory for all png files')

    parser.add_argument('-d', '--datadir', required=False, default="./",
                    help = 'input directory for beam data file')

    parser.add_argument('-if', '--inputfile', required=True, default =None,
                    help = 'input file')
    
    parser.add_argument('-td','--timestampdiff', type=float, required=False, default=2,
                    help = 'difference in timestamp in pixel matching (default:col.ts-row.ts<2)')
   
    parser.add_argument('-tot','--totdiff', type=float, required=False, default=10,
                    help = 'error in ToT[us] in pixel matching (default:(col.tot-row.tot)/col.tot<10%)')
    
    parser.add_argument('-b', '--beaminfo', default='NoSource', required=False,
                    help='beam information ex) proton120GeV')

    parser.add_argument('-ns', '--noisescaninfo', action='store', required=False, type=str, default ='.',
                    help = 'filepath noise scan summary file containing chip noise infomation.')

    parser.add_argument('-hm', '--hitmapmax', action='store', required=False, type=int, default=10,
                    help = 'set maximum event in hit map')

    parser.add_argument
    args = parser.parse_args()

    main(args)
