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
line1, = ax.plot(t, df_new[['30D_IV']], label='30D_IV')
line2, = ax.plot(t, df_new[['60D_IV']], label='60D_IV')
line3, = ax.plot(t, df_new[['1M_IV']], label='1M_IV')
line4, = ax.plot(t, df_new[['2M_IV']], label='2M_IV')
#df_new.plot(subplots=True, figsize=(8, 8)); plt.legend(loc='best')

#leg = ax.legend([line1, line2, line3, line4], ['Group 1'], loc='upper right', fancybox=True, shadow=True, numpoints=1, handler_map={tuple: HandlerTuple(ndivide=None)})
#leg.get_frame().set_alpha(0.4)
line5, = ax.plot(t, df_new[['10D_HV']], label='10D_HV')
line6, = ax.plot(t, df_new[['30D_HV']], label='30D_HV')
line7, = ax.plot(t, df_new[['60D_HV']], label='60D_HV')
line8, = ax.plot(t, df_new[['90D_HV']], label='90D_HV')
#leg1 = ax.legend(loc='upper right')
#leg1.get_frame().set_alpha(0.2)
line9, = ax.plot(t, df_new[['CHG']], label='CHG')
line10, = ax.plot(t, df_new[['1M_25DP']], label='1M_25DP')
line11, = ax.plot(t, df_new[['1M_25DC']], label='1M_25DC')
line12, = ax.plot(t, df_new[['30D_90MNY']], label='30D_90MNY')
line13, = ax.plot(t, df_new[['30D_110MNY']], label='30D_110MNY')
#
line14, = ax.plot(t, df_new[['PRICE']], label='PRICE')
line15, = ax.plot(t, df_new[['PCR']], label='PCR')
line16, = ax.plot(t, df_new[['OI_CALL']], label='OI_CALL')
line17, = ax.plot(t, df_new[['OI_PUT']], label='OI_PUT')
#
line18, = ax.plot(t, df_new[['OIRatio']], label='OIRATIO')
line19, = ax.plot(t, df_new[['Skew']], label='SKEW')
line20, = ax.plot(t, df_new[['Skew/IV']], label='SKEW/IV')
line21, = ax.plot(t, df_new[['30IV/10HV']], label='30IV/10HV')
line22, = ax.plot(t, df_new[['10-30HV']], label='10-30HV')
line23, = ax.plot(t, df_new[['30IV/30HV']], label='30IV/30HV')
line24, = ax.plot(t, df_new[['1STIV/10HV']], label='1STIV/10HV')
line25, = ax.plot(t, df_new[['IV/NIFTYIV']], label='IV/NIFTYIV')
line26, = ax.plot(t, df_new[['Bratio(30IV/10HV Ratio)']], label='Bratio(30IV/10HV Ratio)')
leg = ax.legend(loc='upper left', fancybox=True, ncol=7)
leg.get_frame().set_alpha(0.2)
# we will set up a dict mapping legend line to orig line, and enable
# picking on the legend line
lines = [line1, line2, line3, line4, line5, line6, line7, line8, line9, line10, line11, line12, line13, line14, line15, line16, line17, line18, line19, line20, line21, line22, line23, line24, line25, line26]
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