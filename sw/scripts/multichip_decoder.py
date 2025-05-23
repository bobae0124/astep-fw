import argparse
import pandas as pd
import os

def parse_args():
    parser = argparse.ArgumentParser(description="Multi-chip decoder")
    parser.add_argument("-f", "--file", required=True, help="Input file name")
    parser.add_argument("-n", "--num_chips", type=int, choices=[1, 4, 9], required=True, help="Number of chips (1, 4, or 9)")
    parser.add_argument("--tag", type=str, default="", help="Optional tag to include in output file names")
    return parser.parse_args()

def get_chip_suffix(idx):
    suffixes = ["1st", "2nd", "3rd", "4th", "5th", "6th", "7th", "8th", "9th"]
    return suffixes[idx]

def decode_for_pattern(readout_lines, pattern_hex, chip_idx):
    pattern = pattern_hex.to_bytes(3, byteorder='big')
    segment_length = 11
    decoded_hits = []
    event_id = 1

    for s in readout_lines:
        if not s:
            continue
        try:
            readout = bytes.fromhex(s)
        except ValueError:
            print(f"Skipping invalid hex line: {s}")
            continue

        list_hits = []
        start = 0
        while start < len(readout):
            start = readout.find(pattern, start)
            if start == -1:
                break

            segment = readout[start:start + segment_length]
            if len(segment) == segment_length:
                list_hits.append(segment)
            start += 1

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
                sampleclock_period_ns = 10
                tot_us = (tot_total * sampleclock_period_ns) / 1000.0
                fpga_ts = int.from_bytes(hit[7:11], 'little') if len(hit) >= 11 else -1
            except IndexError:
                layer, id, payload, location, col = -1, -1, -1, -1, -1
                timestamp, tot_msb, tot_lsb, tot_total = -1, -1, -1, -1
                tot_us, fpga_ts = -1, -1

            decoded_hits.append({
                "readout": event_id,
                "order": idx,
                "layer": layer,
                "ChipID": id,
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

        event_id += 1

    return decoded_hits

def main():
    args = parse_args()
    base_hex = 0x0a0104
    num_chips = args.num_chips

    # extract base name without extension
    input_name = os.path.splitext(os.path.basename(args.file))[0]
    tag = f"_{args.tag}" if args.tag else ""

    # Read file and preprocess lines
    with open(args.file, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    readout_lines = [line.strip()[2:-1] if line.strip().startswith("b'") else line.strip() for line in lines]

    for i in range(num_chips):
        pattern_hex = base_hex + i * 0x08
        decoded_hits = decode_for_pattern(readout_lines, pattern_hex, i)

        if decoded_hits:
            df = pd.DataFrame(decoded_hits)
            suffix = get_chip_suffix(i)
            outname = f"decode_output_{input_name}{tag}_{suffix}chip.tsv"
            df.to_csv(outname, sep='\t', index=False)
            print(f"[O] Chip {i+1}: saved to {outname}")
        else:
            print(f"[ ] Chip {i+1}: no matching data found for pattern {pattern_hex:06x}")

if __name__ == "__main__":
    main()

