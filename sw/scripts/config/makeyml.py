#!/usr/bin/env python3
import argparse
from pathlib import Path
from copy import deepcopy

# ---- constants you want identical across all configs ----
DIGITALCONFIG = {
    "interrupt_pushpull": [1, "0b0"],
    "en_inj":             [18, "0b0"],
    "reset":              [1, "0b0"],
    "extrabits":          [15, "0b0"],
}

BIASCONFIG = {
    "DisHiDR": [1, "0b0"],
    "q01":     [1, "0b0"],
    "qon0":    [1, "0b0"],
    "qon1":    [1, "0b1"],
    "qon2":    [1, "0b0"],
    "qon3":    [1, "0b1"],
}

IDACS = {
    "blres":   [6, 0],
    "nu1":     [6, 0],
    "vn1":     [6, 20],
    "vnfb":    [6, 3],
    "vnfoll":  [6, 4],
    "nu5":     [6, 0],
    "nu6":     [6, 0],
    "nu7":     [6, 0],
    "nu8":     [6, 0],
    "vn2":     [6, 0],
    "vnfoll2": [6, 10],
    "vnbias":  [6, 10],
    "vpload":  [6, 5],
    "nu13":    [6, 60],
    "vncomp":  [6, 2],
    "vpfoll":  [6, 60],
    "nu16":    [6, 0],
    "vprec":   [6, 30],
    "vnrec":   [6, 30],
}

VDACS = {
    "blpix":  [10, 568],
    "thpix":  [10, 683],
    "vcasc2": [10, 625],
    "nu1":    [10, 512],
    "thpmos": [10, 682],
    "vinj":   [10, 341],
}

DEFAULT_ALL_ON = "0b001_11111_11111_11111_11111_11111_11111_11111"
FIXED_COLS = {0, 1, 2}
FIXED_BITS = "0b001_00000_00000_00000_00000_00000_00000_00000"

def parse_col_override(s: str):
    """
    Parse "7=0b001_00000_..." into (7, "0b001_00000_...")
    """
    if "=" not in s:
        raise ValueError(f"Bad --col override '{s}'. Use like: 7=0b001_00000_...")
    k, v = s.split("=", 1)
    col = int(k.strip())
    v = v.strip()
    if not v.startswith("0b"):
        raise ValueError(f"Override value must start with 0b..., got '{v}'")
    if not (0 <= col <= 34):
        raise ValueError(f"Column index out of range 0..34: {col}")
    return col, v

def build_recconfig(default_bits: str, overrides: dict[int, str]):
    rec = {}
    for c in range(35):
        bits = overrides.get(c, default_bits)
        rec[f"col{c}"] = [38, bits]
    return rec

def build_config(default_bits: str, overrides: dict[int, str]):
    return {
        "digitalconfig": deepcopy(DIGITALCONFIG),
        "biasconfig":    deepcopy(BIASCONFIG),
        "idacs":         deepcopy(IDACS),
        "vdacs":         deepcopy(VDACS),
        "recconfig":     build_recconfig(default_bits, overrides),
    }

def yaml_dump_simple(obj, indent=0):
    """
    Minimal YAML writer that preserves strings like '0b001_....' without quotes.
    Also keeps list format: [a, b]
    """
    sp = " " * indent
    if isinstance(obj, dict):
        lines = []
        for k, v in obj.items():
            if isinstance(v, (dict,)):
                lines.append(f"{sp}{k}:")
                lines.append(yaml_dump_simple(v, indent + 4))
            else:
                lines.append(f"{sp}{k}: {yaml_dump_simple(v, 0).lstrip()}")
        return "\n".join(lines)
    elif isinstance(obj, list):
        # print lists as [x, y]
        def fmt(x):
            if isinstance(x, str):
                return x  # no quotes for 0b... etc.
            return str(x)
        return "[" + ", ".join(fmt(x) for x in obj) + "]"
    elif isinstance(obj, str):
        return obj
    else:
        return str(obj)

def main():
    ap = argparse.ArgumentParser(
        description="Generate astropix3 YAML with identical configs, customizable col0..col34."
    )
    ap.add_argument("-o", "--out", default="astropix3_generated.yml", help="Output YAML file")
    ap.add_argument("--default-bits", default=DEFAULT_ALL_ON,
                    help="Default recconfig bits for all columns (string starting with 0b...)")
    ap.add_argument("--col", action="append", default=[],
                    help="Override a column bitmask, e.g. --col 3=0b001_00000_... (repeatable)")
    ap.add_argument("--apply-to", default="all",
                    help="Which configs to apply overrides to: all, 0,1,2,3 or comma list like 1,3. Default=all")
    args = ap.parse_args()

    overrides = dict(parse_col_override(s) for s in args.col)

    # build per-config overrides
    apply_set = set()
    if args.apply_to == "all":
        apply_set = {0, 1, 2, 3}
    else:
        apply_set = {int(x.strip()) for x in args.apply_to.split(",") if x.strip() != ""}

    root = {
        "astropix3": {
            "chain": {"length": 4},
            "geometry": {"cols": 35, "rows": 35},
        }
    }

    for i in range(4):
        cfg_name = f"config_{i}"
        if i in apply_set:
            root["astropix3"][cfg_name] = build_config(args.default_bits, overrides)
        else:
            root["astropix3"][cfg_name] = build_config(args.default_bits, {})  # no overrides

    out_path = Path(args.out)
    out_path.write_text(yaml_dump_simple(root) + "\n", encoding="utf-8")
    print(f"Wrote: {out_path}")

if __name__ == "__main__":
    main()

