import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from pathlib import Path

# ===== 파일 경로 설정 =====
ext_path = "data/externalclock20250811-153615.csv"      # 외부 클럭
int_path = "data/internalclock20250811-151139.csv"      # 내부 클럭
off_path = "data/externalOFF20250811-154010.csv"  # 외부 OFF
out_log   = "fpga_ts_overlay_log.png"
out_linear= "fpga_ts_overlay_linear.png"

def load_clean(path):
    """TSV 로드 -> 숫자형 변환 -> -1 제외 -> x = 0..N-1 부여"""
    df = pd.read_csv(path, sep="\t", engine="python")
    df.columns = [c.strip() for c in df.columns]
    df["fpga_ts"] = pd.to_numeric(df["fpga_ts"], errors="coerce")
    n_neg1 = int((df["fpga_ts"] == -1).sum())
    dfc = df[df["fpga_ts"] != -1].reset_index(drop=True).copy()
    dfc["x"] = np.arange(len(dfc))
    return dfc, n_neg1

# ===== 데이터 읽기 =====
df_ext, n1_ext = load_clean(ext_path)
df_int, n1_int = load_clean(int_path)
df_off, n1_off = load_clean(off_path)

# -----------------------------------------------------------
# (1) 로그 스케일 플롯
# -----------------------------------------------------------
fig1 = plt.figure(figsize=(12, 4))
ax1 = fig1.add_subplot(111)

def semilogy_one(ax, dfc, label):
    if dfc.empty:
        return 0
    m = dfc["fpga_ts"] > 0      # 로그 위해 0 이하 제외
    dropped = int((~m).sum())
    if m.any():
        ax.semilogy(dfc.loc[m, "x"], dfc.loc[m, "fpga_ts"], marker="o", linewidth=1, label=label)
    return dropped

drop_ext = semilogy_one(ax1, df_ext, "External")
drop_int = semilogy_one(ax1, df_int, "Internal")
drop_off = semilogy_one(ax1, df_off, "External OFF")

ax1.set_xlabel("index (0..N-1 after filtering)")
ax1.set_ylabel("fpga_ts (log scale)")
ax1.set_title("FPGA TS — Log scale (exclude -1 and ≤0)")
ax1.grid(True, which="both", linestyle="--", alpha=0.5)
ax1.legend()
plt.tight_layout()
Path(out_log).parent.mkdir(parents=True, exist_ok=True)
plt.savefig(out_log, dpi=300, bbox_inches="tight")
plt.close(fig1)

print(f"[LOG] Saved: {out_log}")
print(f"[LOG] Count fpga_ts == -1  | External={n1_ext}, Internal={n1_int}, ExternalOFF={n1_off}")
print(f"[LOG] Dropped for <=0      | External={drop_ext}, Internal={drop_int}, ExternalOFF={drop_off}")

# -----------------------------------------------------------
# (2) 선형 스케일 플롯 (요청 범위로 고정)
# -----------------------------------------------------------
fig2 = plt.figure(figsize=(12, 4))
ax2 = fig2.add_subplot(111)

def plot_one(ax, dfc, label):
    if dfc.empty:
        return
    ax.plot(dfc["x"], dfc["fpga_ts"], marker="o", linewidth=1, label=label)

plot_one(ax2, df_ext, "External")
plot_one(ax2, df_int, "Internal")
plot_one(ax2, df_off, "External OFF")

ax2.set_xlabel("index (0..N-1 after filtering)")
ax2.set_ylabel("fpga_ts")
ax2.set_title("FPGA TS — Linear scale (fixed y-range)")
ax2.set_ylim(488_864_308, 548_721_226)   # 요청한 범위
ax2.grid(True, linestyle="--", alpha=0.5)
ax2.legend()
plt.tight_layout()
Path(out_linear).parent.mkdir(parents=True, exist_ok=True)
plt.savefig(out_linear, dpi=300, bbox_inches="tight")
plt.close(fig2)

print(f"[LIN] Saved: {out_linear}")
print(f"[LIN] Count fpga_ts == -1  | External={n1_ext}, Internal={n1_int}, ExternalOFF={n1_off}")

