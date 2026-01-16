#decoder made by YH Hong
#decoder_re is faster

import binascii
import re
import numpy as np
import pandas as pd
import csv
import sys

SAMPLECLOCK_NS = 5 

def decoder_re(log_file, csv_path):
    # 로그 파일을 줄 단위로 읽기
    with open(log_file, 'r') as file:
        log_data = file.readlines()

    pattern = r'0a0104.{16}'      
    
    # 결과를 저장할 리스트
    results = []

    # 각 줄을 검사하여 패턴을 찾음
    for line_number, line in enumerate(log_data, start=1):
        list_hits = re.findall(pattern, line)
        for hit in list_hits:
            try:
                # binascii.unhexlify는 유효한 16진수 문자열만 처리
                hit_bytes = binascii.unhexlify(hit)
                results.append((line_number, hit_bytes))
            except binascii.Error:
                print(f"Invalid hex found in line {line_number}: {hit}")
    # CSV 파일 작성
    with open(csv_path, mode='w', newline='') as csvfile:
        csvwriter = csv.writer(csvfile, delimiter='\t')
        csvwriter.writerow(['readout', 'ChipID', 'payload', 'location', 'isCol', 'timestamp', 'tot_msb', 'tot_lsb', 'tot_total', 'tot_us', 'fpga_ts'])

        for line_number, hit in results:
            hit = list(hit)  # hit_bytes를 리스트로 변환
            if (sum(hit) == 1020) or (int(hit[0]) + int(hit[1]) == 510):
                continue
            try:
                id          = int(hit[2]) >> 3
                payload     = int(hit[2]) & 0b111
                location    = int(hit[3]) & 0b111111
                col         = 1 if (int(hit[3]) >> 7) & 1 else 0
                timestamp   = int(hit[4])
                tot_msb     = int(hit[5]) & 0b1111
                tot_lsb     = int(hit[6])
                tot_total   = (tot_msb << 8) + tot_lsb
                tot_us      = tot_total * SAMPLECLOCK_NS / 1000.0
                fpga_ts     = int.from_bytes(hit[7:11], sys.byteorder)
            except IndexError:  # hit cut off at end of stream
                id, payload, location, col = -1, -1, -1, -1
                timestamp, tot_msb, tot_lsb, tot_total = -1, -1, -1, -1

            if (id == 0 and payload == 4 and location < 35):
                csvwriter.writerow([line_number, id, payload, location, col, timestamp, tot_msb, tot_lsb, tot_total, tot_us, fpga_ts]) 
#decoder_re("/home/npl/AstroPix/data/241009/THR200_APS3-W08-S03_20241009_155319.log", "/home/npl/AstroPix/data/241009/new_THR200_APS3-W08-S03_20241009_155319.csv")
#decoder_re("/home/npl/AstroPix/data/241009/THR200_APS3-W08-S03_20241009_164047.log", "/home/npl/AstroPix/data/241009/new_THR200_APS3-W08-S03_20241009_164047.csv")


def decode_readout_offline(readout:bytearray, i:int, printer: bool = True, nmb_bytes:int = 11):

    list_hits =[]
    start = 0
    prefix='0a0104'
    segment_length=22
    hit_list = []
    while start < len(readout):
        start = readout.find(prefix, start)
        if start == -1:
            break
        segment = readout[start:start + segment_length]
        if len(segment) == segment_length:
            list_hits.append(segment)
        start += segment_length

    for hits in list_hits:  # 2024.June.2 update
        if len(list_hits) < 2:
            continue
        # Generates the values from the bitstream
        hit = list(binascii.unhexlify(hits)) #2024.June.2 update
        if (int(hit[3])+int(hit[4]) == 510): #HARDCODED MAX BUFFER or 'HIT' OF ONLY 1'S- WILL NEED TO REVISIT
                print(f"=====  {int(hit[3])},{int(hit[4])}: hit[3]+hit[4] == 510 [ffff]   =====")
                continue
        try:
            id          = int(hit[2]) >> 3
            payload     = int(hit[2]) & 0b111
            location    = int(hit[3])  & 0b111111
            col         = 1 if (int(hit[3]) >> 7 ) & 1 else 0
            timestamp   = int(hit[4])
            tot_msb     = int(hit[5]) & 0b1111
            tot_lsb     = int(hit[6])   
            tot_total   = (tot_msb << 8) + tot_lsb
        except IndexError: #hit cut off at end of stream
            id, payload, location, col = -1, -1, -1, -1
            timestamp, tot_msb, tot_lsb, tot_total = -1, -1, -1, -1

            hits = {
                'readout': i,
                'ChipID': id,
                'payload': payload,
                'location': location,
                'isCol': (True if col else False),
                'timestamp': timestamp,
                'tot_msb': tot_msb,
                'tot_lsb': tot_lsb,
                'tot_total': tot_total,
                'tot_us': tot_total * SAMPLECLOCK_NS/1000.0,
                'fpga_ts': int.from_bytes(hit[7:11], sys.byteorder)
                }
        hit_list.append(hits)

    return pd.DataFrame(hit_list)
        



