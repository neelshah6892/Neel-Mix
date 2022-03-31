import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from matplotlib.legend_handler import HandlerLine2D, HandlerTuple

df = pd.read_excel('C:\\Users\\Administrator\\Desktop\\Data.xlsx', parse_dates=True, sheet_name="JUST IN Equity")
df_new = df.rename(columns={'30DAY_IMPVOL_100.0%MNY_DF': '30D_IV', '60DAY_IMPVOL_100.0%MNY_DF': '60D_IV', '1ST_MTH_IMPVOL_100.0%MNY_DF': '1M_IV', '2ND_MTH_IMPVOL_100.0%MNY_DF': '2M_IV', 'VOLATILITY_10D': '10D_HV', 'VOLATILITY_30D': '30D_HV', 'VOLATILITY_60D': '60D_HV', 'VOLATILITY_90D': '90D_HV', 'CHG_PCT_1D': 'CHG', '1M_PUT_IMP_VOL_25DELTA_DFLT': '1M_25DP', '1M_CALL_IMP_VOL_25DELTA_DFLT': '1M_25DC', '30DAY_IMPVOL_90.0%MNY_DF': '30D_90MNY', '30DAY_IMPVOL_110.0%MNY_DF': '30D_110MNY', 'PX_LAST': 'PRICE', 'PUT_CALL_VOLUME_RATIO_CUR_DAY': 'PCR', 'OPEN_INT_TOTAL_CALL': 'OI_CALL', 'OPEN_INT_TOTAL_PUT': 'OI_PUT'},index={'ONE': 'one'})
plt.style.use('dark_background')
t = df_new[['JUST IN Equity']]
fig, ax = plt.subplots()
ax.set_title('Excel to Charts')
line1, = ax.plot(t, df_new[['30D_IV']], lw=2, color='red', label='30D_IV', visible=False)
line2, = ax.plot(t, df_new[['60D_IV']], lw=2, color='blue', label='60D_IV')
line14, = ax.secondary_xaxis(t, df_new[['PRICE']], lw=2, color='tomato', label='PRICE')

leg = ax.legend(loc='upper left', fancybox=True, ncol=7)
leg.get_frame().set_alpha(0.2)
# we will set up a dict mapping legend line to orig line, and enable
# picking on the legend line
lines = [line1, line2, line14]
lined = dict()
for legline, origline in zip(leg.get_lines(), lines):
    legline.set_picker(5)  # 5 pts tolerance
    lined[legline] = origline


def onpick(event):
    # on the pick event, find the orig line corresponding to the
    # legend proxy line, and toggle the visibility
    legline = event.artist
    origline = lined[legline]
    vis = not origline.get_visible()
    origline.set_visible(vis)
    # Change the alpha on the line in the legend so we can see what lines
    # have been toggled
    if vis:
        legline.set_alpha(1.0)
    else:
        legline.set_alpha(0.2)
    fig.canvas.draw()

fig.canvas.mpl_connect('pick_event', onpick)
plt.autoscale(enable=True, axis='both', tight=None)
plt.show()