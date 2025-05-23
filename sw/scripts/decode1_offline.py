import binascii
import pandas as pd
import numpy as np

# Define the pattern for identifying packets
#pattern = bytes.fromhex('0a0104')
pattern = bytes.fromhex('0a010c')
#pattern = bytes.fromhex('0a0114')
#pattern = bytes.fromhex('0a011c')
segment_length = 11  # Each valid packet length

decoded_hits = []
file='20250523-144520.txt'  #w101q04 -c2 chip1
#file='20250520-174239_merge.txt'  #w101q04 -c2 chip1
#file='20250520-174058.txt'  #w101q04 -c2 chip1
#file='20250422-162842.txt'  #module1 w/o source
#file='20250407-160951.txt'
#file='20250402-181437.txt'
#file='20250402-175103.txt'
#file='20250402-173333.txt'
#file='20250402-171954.txt'
#file='20250328-204925.txt'
#file='20250328-202435.txt'
#file='20250328-201645.txt'
#file='20250328-195924.txt'
#file='20250328-195117.txt'
#file='20250328-194723.txt'
#file='20250328-194430.txt'
#file='20250328-184616.txt'
#file='20250328-184035.txt'
#file='20250328-183244.txt'
#file='20250328-182440.txt'
#file='20250328-181815.txt'
#file='20250328-181209.txt'
#file='20250328-180845.txt'
#file='20250328-180511.txt'
#file='20250328-180147.txt'
#file='20250328-175552.txt'
#file='20250328-175428.txt'
# Read from a text file using numpy
#file='cmod_w101q12_allofftest_c10r10_300mV_injv300_20250324-190930.txt' #1s
#file='cmod_w101q12_allofftest_c10r10_300mV_injv300_20250324-190945.txt' #10s
#file='cmod_w101q12_allofftest_c10r10_300mV_injv500_20250324-191403.txt'
#file='cmod_w101q12_allofftest_c10r10_300mV_injv500_20250324-191639.txt'
#file='cmod_w101q12_allofftest_c10r10_300mV_injv700_20250324-191919.txt'
#file='20250325-181842.txt'#python3.12 mainbb.py -i 0 3 17 23 -T 5 -t 300 -v 300 -y quadchip_allOfftest_chip4 -c 4
#file='20250325-183026.txt'# -t 300 -c 1 col3-34,r0-34 on
#file='20250325-183858.txt' # -t 300 -c 1 col3-34,r0-34 on; masked 3,11;13;34 ...
#file='20250325-184212.txt'# -t 300 -c 1 col3-34,r0-34 on; masked r34 + 3,11; ...
#file='20250325-184934.txt' # sr90 10s
#file='20250325-185234.txt' #sr90, may28 config 10s
#file='20250325-185448.txt' # .. collimator 10s
#file='20250325-190627.txt' # sr90, may28 config, 30s
#file='20250325-191053.txt' # 60s
#file='20250325-191901.txt' # 60s, masked col5, col13, row4, row18
#file='20250325-192302.txt' # 60s +masked c16
#file='20250325-192659.txt' # 60s, +masked c32
#file='20250325-193436.txt' # 10s -c 2
#file='20250325-193836.txt'
#file='20250325-194143.txt'
#file='20250325-194307.txt'
#file='20250325-194825.txt'
#file='20250325-195145.txt' # sr90 ; 30s
#file='20250325-195526.txt'# sr90 ; 30s large col
#file='20250325-195625.txt'# sr90 ; 30s small col
#file='20250325-200134.txt'
#file='20250325-200922.txt' #sr90 -c 4
#250327
#file='20250327-145915.txt' #30s
#file='20250327-150245.txt' #30s
#file='20250327-150857.txt' # 60s
#file='20250327-154206.txt' # 60s sr90onc1 c4 
#file='20250327-154438.txt'  # 60s sr90onc1 c4 
#file='20250327-155530.txt' # 60s am241onc1 c1
#file='20250327-155751.txt'#60s am241onc1 c2
#file='20250327-155955.txt' # 60s am241onc1 c1
#file='20250327-160607.txt' # 60s am241onc1 c1
#file='20250327-161101.txt'# 60s Sr90onc0+collimator c1
#file='20250327-161352.txt'# 60s Sr90onc0+collimator c1
#file='20250327-161516.txt'# 60s Sr90onc0+collimator3 -c1
#file='20250327-161738.txt'# >60s Sr90onc1+collimator3 -c1
#file='20250327-162035.txt'#100s Sr90onc2+collimator3 --c1
#file='20250327-162724.txt' #100s Sr90onc1+collimator2 -c1
#file='20250327-163258.txt' #100s Sr90onc1+collimator2 -c1 + add 4 more masked pixels
#file='20250327-163549.txt' #100s Sr90onc2+collimator2 -c1
#file='20250327-164101.txt'
#file='20250327-164414.txt'#add plastic on c0:
#file='20250327-164726.txt'# coll.3 on c0
#file='20250327-165051.txt'# coll.3 on c0
#file='20250327-165342.txt'# coll.3 on c0
#file='20250327-165547.txt'# coll.3 on c0
#file='20250327-165750.txt'# coll.3 on c0
#file='20250327-170059.txt'# coll.3 on c0
#file='20250327-170338.txt'# coll.3 on c0
#file='20250327-170925.txt'# coll.3 on c0
#file='20250327-171327.txt'# coll.3 on c0
#file='20250327-171748.txt'# coll.3 on c0
#file='20250327-172119.txt'# coll.3 on c0
#file='20250327-172736.txt'# coll.3 on c0
#file='20250327-173055.txt'# coll.3 on c0
#file='20250327-173758.txt'# coll.3 on c0
#file='20250327-173947.txt'# coll.3 on c0
#file='20250327-174257.txt'# coll.3 on c0
#file='20250327-175034.txt'# coll.3 on c0
#file='20250327-175354.txt'# coll.3 on c0
#file='20250327-175911.txt'# coll.3 on c0
#file='20250327-180834.txt'
#file='20250327-181237.txt'
#file='20250327-181650.txt'
#file='20250327-181933.txt'
#file='20250328-171040.txt'
#file='20250328-171741.txt'
#file='20250328-172703.txt'


f = np.loadtxt('data/'+file, dtype=str)

with open('data/'+file,'r',encoding='utf-8') as f:
    lines=f.readlines()

#strings = [a[2:-1] for a in f]  # Process file lines and strip any unexpected characters
strings = [line.strip()[2:-1] if line.strip().startswith("b") else line.strip() for line in lines]  

event_id = 1  # Initialize event counter

for s in strings:
    if not s:
        continue  # Skip empty lines
    
    try:
        readout = bytes.fromhex(s)  # Convert hex string to bytes
    except ValueError:
        print(f"Skipping invalid hex line: {s}")
        continue

    # Extract packets that match the pattern
    list_hits = []
    start = 0
    order = 0
    while start < len(readout):
        start = readout.find(pattern, start)
        if start == -1:
            break

        segment = readout[start:start + segment_length]
        if len(segment) == segment_length:
            list_hits.append(segment)
            order += 1
            print(f"Event {event_id} - Found valid segment: {segment.hex()}")  # Debugging log
        
        start += 1  # Move to the next byte to avoid skipping matches
    
#    for hit in list_hits:
    for idx, hit in enumerate(list_hits, start=1):

        try:
            pack_len  = hit[0]
            layer     = hit[1]
            id        = hit[2] >> 3
            payload   = hit[2] & 0b111
            location  = hit[3] & 0b111111
            col       = 1 if (hit[3] >> 7) & 1 else 0
            timestamp = hit[4]
            tot_msb   = hit[5] & 0b1111
            tot_lsb   = hit[6]
            tot_total = (tot_msb << 8) + tot_lsb
            sampleclock_period_ns = 5  # Placeholder value
            tot_us = (tot_total * sampleclock_period_ns) / 1000.0
            fpga_ts = int.from_bytes(hit[7:11], 'little') if len(hit) >= 11 else -1
        except IndexError:
            pack_len, layer, id, payload, location, col = -1, -1, -1, -1, -1, -1
            timestamp, tot_msb, tot_lsb, tot_total = -1, -1, -1, -1
            tot_us, fpga_ts = -1, -1

        decoded_hits.append({
            "readout": event_id,
            "order":idx,
            "layer": layer,
            "ChipID": id,
#            "packet_len": pack_len,
            "payload": payload,
            "location": location,
            "isCol": col,
            "timestamp": timestamp,
            "tot_msb": tot_msb,
            "tot_lsb": tot_lsb,
            "tot_total": tot_total,
            "tot_us": tot_us,
            "fpga_ts": fpga_ts
        })
    
    event_id += 1  # Increment event counter after processing each line

# Convert to DataFrame and display
if decoded_hits:
    df_decoded_hits = pd.DataFrame(decoded_hits)
    print(df_decoded_hits)  # Display DataFrame
    df_decoded_hits.to_csv('decoded_c1_'+file+'.tsv', sep='\t', index=False)
    print(f"Decoded data saved! : decoded_c1_{file}.tsv")
