import matplotlib.pyplot as plt
from matplotlib.widgets import Button, TextBox
from tkinter import filedialog, Listbox
import pandas as pd
import xlrd
import tkinter as tk
from tkinter import ttk
from matplotlib.legend_handler import HandlerLine2D, HandlerTuple
import h5py


def loadfile(self):
    global f
    f = filedialog.askopenfilename(
        initialdir='C:/',
        title='Choose file',
        filetypes=[('xlsx file', 'xlsx'),
                   ('xls file', 'xls'),
                   ('csv file', '.csv')]
    )
    #loaddropdown(f)
    global h
    h = h5py.File('data.h5', 'w')
    xls = xlrd.open_workbook(f, on_demand=True)
    for sheet in xls.sheets():
        grp = h.create_group(sheet.name)
        print(grp)
        for i in range(sheet.ncols):
            sb = sheet.cell_value(0, i)
            sbgrp = grp.create_group(sb)
            print(sbgrp)
            dset = sbgrp.create_dataset(name="GRP 1", shape=(200,), dtype=str)
            print(dset)
            """try:
                for j in range(sheet.nrows):
                    # ss = sheet.col_values(j)
                    d1 = sheet.col_values(j)
                    # dset = sbgrp.create_dataset()
                    print(d1)
            except Exception as e:
                print(e)
                continue"""
    plt.draw()

def loaddropdown(self):
    print(f)
    global xl, sn
    xl = xlrd.open_workbook(f)
    sn = xl.sheet_names()
    print(sn)
    pass

def loadplot(self):
    fig, ax = plt.subplots(constrained_layout=True)
    secax = ax.secondary_yaxis('right')
    secax.set_ylabel('PRICE')
    df = pd.read_excel(f, parse_dates=True, sheet_name=sn)
    df_new = df.rename(columns={'30DAY_IMPVOL_100.0%MNY_DF': '30D_IV', '60DAY_IMPVOL_100.0%MNY_DF': '60D_IV',
                                '1ST_MTH_IMPVOL_100.0%MNY_DF': '1M_IV', '2ND_MTH_IMPVOL_100.0%MNY_DF': '2M_IV',
                                'VOLATILITY_10D': '10D_HV', 'VOLATILITY_30D': '30D_HV', 'VOLATILITY_60D': '60D_HV',
                                'VOLATILITY_90D': '90D_HV', 'CHG_PCT_1D': 'CHG',
                                '1M_PUT_IMP_VOL_25DELTA_DFLT': '1M_25DP', '1M_CALL_IMP_VOL_25DELTA_DFLT': '1M_25DC',
                                '30DAY_IMPVOL_90.0%MNY_DF': '30D_90MNY', '30DAY_IMPVOL_110.0%MNY_DF': '30D_110MNY',
                                'PX_LAST': 'PRICE', 'PUT_CALL_VOLUME_RATIO_CUR_DAY': 'PCR',
                                'OPEN_INT_TOTAL_CALL': 'OI_CALL', 'OPEN_INT_TOTAL_PUT': 'OI_PUT'}, index={'ONE': 'one'})
    line1, = ax.plot(sn, df_new[['30D_IV']])
    line2, = ax.plot(sn, df_new[['60D_IV']])
    line3, = ax.plot(sn, df_new[['1M_IV']])
    line4, = ax.plot(sn, df_new[['2M_IV']])
    line5, = ax.plot(sn, df_new[['10D_HV']])
    line6, = ax.plot(sn, df_new[['30D_HV']])
    line7, = ax.plot(sn, df_new[['60D_HV']])
    line8, = ax.plot(sn, df_new[['90D_HV']])
    line14, = secax.plot(sn, df_new[['PRICE']])
    leg = ax.legend(loc='upper left', fancybox=True, cols=4)
    leg.get_frame().set_alpha(0.2)

    a = h['df_new']['30D_IV']
    print(a)

    lines = [line1, line2, line3, line4, line5, line6, line7, line8, line14]
    lined = dict()
    for legline, origline in zip(leg.get_lines(), lines):
        legline.set_picker(5)  # 5 pts tolerance
        lined[legline] = origline

    def onpick(event):
        legline = event.artist
        origline = lined[legline]
        vis = not origline.get_visible()
        origline.set_visible(vis)
        if vis:
            legline.set_alpha(1.0)
        else:
            legline.set_alpha(0.2)
        fig.canvas.draw()

    fig.canvas.mpl_connect('pick_event', onpick)

    pass


def callfunc():
    print("Function run")

plt.style.use('dark_background')
axloadfile = plt.axes([0.85, 0.90, 0.1, 0.075])
axloaddropdown = plt.axes([0.10, 0.90, 0.25, 0.075])
#axloadlist = plt.axes([0.80, 0.80, 0.80, 0.85])
axgraph = plt.axes([0.05, 0.05, 0.90, 0.80])
axgraph.secondary_yaxis('right')
bnloadfile = Button(axloadfile, 'Load File', color="black", hovercolor="black")
bnloadfile.on_clicked(loadfile)
#bnloaddropdown = Button(axloaddropdown, 'Drop Down', color="black", hovercolor="black")
#bnloaddropdown.on_clicked(loaddropdown)
tb = TextBox(axloaddropdown, 'Options')
"""ddload = ttk.Combobox(values='sn')
ddload.bind("<<ComboboxSelected>>", callfunc)
print(ddload)"""
plt.show()