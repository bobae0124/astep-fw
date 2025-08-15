"""
02/2023 Jihee Kim added number of events from csv file of beam measurements
06/2024 Bobae Kim updated

python3.12 scripts/generate_run_summary_cid.py -d example_data/ -if 20250728-173950_Sr90_w123q09_1min_cid0.csv
> In the astep-fw/sw, two files are created:
>	MatchingHitinfo_20250728-173950_Sr90_w123q09_1min_cid0.csv
>	20250728-173950_Sr90_w123q09_1min_cid0.csv_NoSource_AstroPixv3_diffTS2_diffToT10.png
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
from astep import astepRun
plt.style.use('classic')

def main(args):
    pd.set_option('display.max_rows',None)
    pd.set_option('display.max_columns',None)
    path = args.datadir

    pair = [] 
    tot_n_nans = 0
    tot_n_evts = 0
    n_evt_excluded = 0
    n_evt_used = 0

    f = args.datadir + args.inputfile
    print(f"Reading in {f}")
    #df = pd.read_csv(f,sep='\t')
    df = pd.read_csv(f)

    # In code sections tagged with 'cid#', ONLY matched hit inforamtion of the chip ID extracted from the CSV filename is saved.
    # The filename must include 'cid#'.
    chipid = None
    chip_suffix_map = {
        "cid0": 0, "cid1": 1, "cid2": 2,
        "cid3": 3, "cid4": 4, "cid5": 5,
        "cid6": 6, "cid7": 7, "cid8": 8
    }

    for suffix, cid in chip_suffix_map.items():
        if suffix in args.inputfile:
            chipid = cid
            break
    
    if chipid is None:
        print(f"[!] Could not determine ChipID from inputfile name: {args.inputfile}")
        sys.exit(1)

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
        dff = df.loc[(df['readout'] == ievt) & (df['payload'] == 4) & (df['chipID'] == chipid)]
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
                    if (abs(dffcol['timestamp'][indc] - dffrow['timestamp'][indr]) < timestamp_diff) & (abs(dffcol['tot_us'][indc] - dffrow['tot_us'][indr])/dffcol['tot_us'][indc]*100 < tot_time_limit):
                        #print(f"[Matched] col.location, row.location = {dffcol['location'][indc]},{dffrow['location'][indr]}; {dffcol['tot_us'][indc]},{dffrow['tot_us'][indr]}")
                        # Record hit pixels per event
                        average_tot = ((dffcol['tot_us'][indc] + dffrow['tot_us'][indr])/2)
                        pair.append([dffcol['readout'][indc], dffcol['location'][indc], dffrow['location'][indr], dffcol['timestamp'][indc], dffrow['timestamp'][indr], dffcol['tot_us'][indc], dffrow['tot_us'][indr], ((dffcol['tot_us'][indc] + dffrow['tot_us'][indr])/2)])
                        dffrow = dffrow.drop(indr)
                        break
    print("... Matching is done!")
    #----  Summary of how many events being used ---#
    nevents = '%.2f' % ((n_evt_used/(tot_n_evts)) * 100.)
    nnanevents = '%.2f' % ((tot_n_nans/(tot_n_evts)) * 100.)
    n_empty = tot_n_evts - n_evt_used - tot_n_nans
    nemptyevents = '%.2f' % ((n_empty/(tot_n_evts)) * 100.)
    print("Summary:")
    print(f"{n_evt_used} of {tot_n_evts} events were processed...")
    print(f"***** Matching hit: {len(pair)} *****")
    #-----------------------------------------------#
    
    # Mask Pixel Information
    #FIXME; read yml file
    disablepix=[]
    for r in range(0,35,1):
        for c in range(0,3,1): # 0-4 col
                disablepix.append([c, r, 1])
    pixs=pd.DataFrame(disablepix, columns=['col','row','disable'])
#    print(pixs)
    npixel = '%.2f' % ( (1-(len(pixs)/1225)) * 100.)
#    print(f"{len(pixs)}, {npixel}% active")
     
    #---- Create hit pixel dataframes and Save csv file as MatchingHitinfo_*.csv ----#
    # Hit pixel information for all events
    dffpair = pd.DataFrame(pair, columns=['readout','col','row','timestamp_col', 'timestamp_row', 'tot_us_col', 'tot_us_row', 'avg_tot_us'])
    dffpair.to_csv(f"MatchingHitinfo_{args.inputfile}", sep='\t', index=False)
    # Create dataframe for number of hits 
    dfpair = dffpair[['col','row']].copy()
    dfpairc = dfpair[['col','row']].value_counts().reset_index(name='hits')
    # How many hits are collected and shown in a plot
    print(f"{dfpairc}")
    nhits = dfpairc['hits'].sum()
    # mean of avg_tot_us, each col, row
    grouped_avg = dffpair.groupby(['col', 'row'])['avg_tot_us'].mean().reset_index(name='avg')
    print(f"average_tot = {grouped_avg}")

    if grouped_avg.empty:
        print("no maching hit at all. exit code")
        sys.exit()
    
    # Generate Plot: row 2 x col 3
    row = 2
    col = 3
    fig, ax = plt.subplots(row, col, figsize=(20, 10))
    for irow in range(0, row):
        for icol in range(0, col):
            for axis in ['top','bottom','left','right']:
                ax[irow, icol].spines[axis].set_linewidth(1.5)

    # Hit Map
    #p1 = ax[0, 0].hist2d(x=dfpairc['col'], y=dfpairc['row'], bins=35, range=[[0,35],[0,35]], weights=dfpairc['hits'], cmap='YlOrRd', cmin=1.0, norm=matplotlib.colors.LogNorm())
    p1 = ax[0, 0].hist2d(x=dfpairc['col'], y=dfpairc['row'], bins=35, range=[[0,35],[0,35]], weights=dfpairc['hits'], cmap='YlOrRd', cmin=1.0)
    fig.colorbar(p1[3], ax=ax[0, 0]).set_label(label='Hit Counts', weight='bold', size=14)
    ax[0,0].grid()
    ax[0, 0].set_xlabel('Col', fontweight = 'bold', fontsize=14)
    ax[0, 0].set_ylabel('Row', fontweight = 'bold', fontsize=14)
    ax[0, 0].xaxis.set_tick_params(labelsize = 14)
    ax[0, 0].yaxis.set_tick_params(labelsize = 14)

    # Mask Map : WILL BE UPDATED
    p2 = ax[0, 1].hist2d(x=pixs['col'], y=pixs['row'], bins=35, range=[[0.,35],[0,35]], weights=pixs['disable'], norm=Normalize(vmin=0,vmax=1),cmap='Greys')
    fig.colorbar(p2[3], ax=ax[0, 1]).set_label(label='Masked', weight='bold', size=14)
    ax[0,1].grid()
    ax[0, 1].set_xlabel('Col', fontweight = 'bold', fontsize=14)
    ax[0, 1].set_ylabel('Row', fontweight = 'bold', fontsize=14)
    ax[0, 1].xaxis.set_tick_params(labelsize = 14)
    ax[0, 1].yaxis.set_tick_params(labelsize = 14)

    #Hit Map + Mask Map: Overlay Plot
    p3 = ax[0,2].hist2d(x=pixs['col'], y=pixs['row'], bins=35, range=[[0.,35],[0,35]], weights=pixs['disable'], norm=Normalize(vmin=0,vmax=1),cmap='Greys')
    p3 = ax[0,2].hist2d(x=dfpairc['col'], y=dfpairc['row'], bins=35, range=[[0,35],[0,35]], weights=dfpairc['hits'], cmap='YlOrRd', cmin=1.0)

    fig.colorbar(p3[3], ax=ax[0, 2]).set_label(label='Hit Counts', weight='bold', size=14)
    ax[0,2].grid()
    ax[0,2].set_xlabel('Col', fontweight = 'bold', fontsize=14)
    ax[0,2].set_ylabel('Row', fontweight = 'bold', fontsize=14)
    ax[0,2].xaxis.set_tick_params(labelsize = 14)
    ax[0,2].yaxis.set_tick_params(labelsize = 14)

    # Avg.time-over-threshold Map
    p4 = ax[1, 0].hist2d(x=grouped_avg['col'], y=grouped_avg['row'], bins=35, range=[[0,35],[0,35]], weights=grouped_avg['avg'], cmap='Blues',vmin=0.0)
    fig.colorbar(p4[3], ax=ax[1, 0]).set_label(label='Avg.ToT [us]', weight='bold', size=14)
    ax[1, 0].grid()
    ax[1, 0].set_xlabel('Col', fontweight = 'bold', fontsize=14)
    ax[1, 0].set_ylabel('Row', fontweight = 'bold', fontsize=14)
    ax[1, 0].xaxis.set_tick_params(labelsize = 14)
    ax[1, 0].yaxis.set_tick_params(labelsize = 14)

    # Time-over-threshold distribution for all pixels
    p5 = ax[1, 1].hist(x=dffpair['avg_tot_us'], bins=88, range=(0, 22), color='blue', edgecolor='black')
    ax[1, 1].grid()
    ax[1, 1].set_xlabel('ToT [us]', fontweight = 'bold', fontsize=14)
    ax[1, 1].set_ylabel('Counts', fontweight = 'bold', fontsize=14)
    ax[1, 1].xaxis.set_tick_params(labelsize = 14)
    ax[1, 1].yaxis.set_tick_params(labelsize = 14)

    # Run Information
    ax[1, 2].set_axis_off()
    ax[1, 2].text(0.1, 0.40, f"Available Pixels: {npixel}%", fontsize=15);
    ax[1, 2].text(0.1, 0.70, f"Events: {tot_n_evts}", fontsize=15);#, fontweight = '');
    ax[1, 2].text(0.1, 0.60, "Processed below", fontsize=15, fontweight = 'bold');
    ax[1, 2].text(0.1, 0.55, f"conditions: <{args.timestampdiff} timestamp and <{args.totdiff}% in ToT", fontsize=15);#, fontweight = '');
    ax[1, 2].text(0.1, 0.50, f"nevents: {nevents}%", fontsize=15);#, fontweight = '');
    ax[1, 2].text(0.1, 0.45, f"nhits: {nhits}", fontsize=15);#, fontweight = '');

    ax[0, 0].set_title(f"Hit Map", fontweight = 'bold', fontsize=14)
    ax[0, 1].set_title(f"Masked pixel (v3QuadChip_layer0_chip0)", fontweight = 'bold', fontsize=14)
    ax[0, 2].set_title(f"Hit Map with Masked pixels", fontweight = 'bold', fontsize=14)
    ax[1, 0].set_title(f"Avg.ToT per pixel", fontweight = 'bold', fontsize=14)
    ax[1, 1].set_title(f"Avg.ToT for all pixels", fontweight = 'bold', fontsize=14)

    plt.savefig(f"{args.outdir}/{args.inputfile}_{args.beaminfo}_{args.name}_diffTS{args.timestampdiff}_diffToT{args.totdiff}.png")
    print(f"{args.inputfile}_{args.beaminfo}_{args.name}_diffTS{args.timestampdiff}_diffToT{args.totdiff}.png was created...")
    # Draw Plot
    plt.show()

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

    parser.add_argument
    args = parser.parse_args()

    main(args)
