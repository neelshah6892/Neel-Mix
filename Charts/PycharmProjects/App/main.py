import matplotlib.pyplot as plt
from matplotlib.widgets import Button, TextBox
from tkinter import filedialog, Listbox
import pandas as pd
import xlrd
import tkinter as tk
from tkinter import ttk
from matplotlib.legend_handler import HandlerLine2D, HandlerTuple
import h5py
import numpy as np


def loadfile(self):
    global f
    f = filedialog.askopenfilename(
        initialdir='C:/',
        title='Choose file',
        filetypes=[('xlsx file', 'xlsx'),
                   ('xls file', 'xls'),
                   ('csv file', '.csv')]
    )
    h = h5py.File('data.h5', 'w')
    xls = xlrd.open_workbook(f, on_demand=True)
    global xl
    xl = xls.sheet_names()
    for sheet in xls.sheets():
        df = pd.read_excel(f, parse_dates=True, sheet_name=sheet.name)
        global grp
        d = df['30DAY_IMPVOL_100.0%MNY_DF']
        print(d[1])
        grp = h.create_group(sheet.name)
        print(grp)
        for i in range(sheet.ncols):
            sb = sheet.cell_value(0, i)
            sbgrp = grp.create_group(sb)
            print(sbgrp)
            dset = sbgrp.create_dataset(sbgrp, data=d[i])
            print(dset)
    plt.draw()

"""def loaddropdown(self):
    print(f)
    with h5py.File('data.h5', 'r') as hdf:
        ls = list(hdf.items())
        set1 = ttk.OptionMenu(self, grp.items())
        print(ls)
    pass"""

def loadplot(self):
    """with h5py.File('data.h5', 'r') as hdf:
        bi = list(hdf.items())
        print(bi)
        pass"""
    hdf = pd.HDFStore('data.h5', mode='r')
    print(hdf.groups())
    fig, ax = plt.subplots(constrained_layout=True)
    secax = ax.secondary_yaxis('right')
    secax.set_ylabel('PRICE')
    g1 = hdf.get('JUST IN Equity')
    d1 = hdf.get('30DAY_IMPVOL_100.0%MNY_DF')
    d1v = np.array(d1)
    line1, = ax.plot(g1, d1v, label='30D_IV')
    line2, = ax.plot(g1, d1v, label='60D_IV')
    line3, = ax.plot(g1, d1v, label='1M_IV')
    line4, = ax.plot(g1, d1v, label='2M_IV')
    line5, = ax.plot(g1, d1v, label='10D_HV')
    line6, = ax.plot(g1, d1v, label='30D_HV')
    line7, = ax.plot(g1, d1v, label='60D_HV')
    line8, = ax.plot(g1, d1v, label='90D_HV')
    line14, = secax.plot(g1, d1v, label='PRICE')
    leg = ax.legend(loc='upper left', fancybox=True, cols=4)
    leg.get_frame().set_alpha(0.2)

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


def on_keyrelease(event):
    # get text from entry
    value = event.widget.get()
    value = value.strip().lower()
    # get data from test_list
    if value == '':
        data = grp
    else:
        data = []
        for item in grp:
            if value in item.lower():
                data.append(item)
    # update data in listbox
    listbox_update(data)


def listbox_update(data):
    # delete previous data
    listbox.delete(0, 'end')
    # sorting data
    data = sorted(data, key=str.lower)
    # put new data
    for item in data:
        listbox.insert('end', item)


def on_select(event):
    # display element selected on list
    print('(event) previous:', event.widget.get('active'))
    print('(event)  current:', event.widget.get(event.widget.curselection()))
    print('---')
    listbox_update(grp)



plt.style.use('dark_background')
axloadfile = plt.axes([0.85, 0.90, 0.1, 0.075])
#axloaddropdown = plt.axes([0.10, 0.90, 0.25, 0.075])
#axloadlist = plt.axes([0.80, 0.80, 0.80, 0.85])
axgraph = plt.axes([0.05, 0.05, 0.90, 0.80])
axgraph.secondary_yaxis('right')
bnloadfile = Button(axloadfile, 'Load File', color="black", hovercolor="black")
bnloadfile.on_clicked(loadfile)
#bnloaddropdown = Button(axloaddropdown, 'Drop Down', color="black", hovercolor="black")
#bnloaddropdown.on_clicked(loaddropdown)
#tb = TextBox(axloaddropdown, 'Options', color="black", hovercolor="black")
entry = ttk.Entry()
entry.bind('<KeyRelease>', on_keyrelease)
listbox = tk.Listbox()

#listbox.bind('<Double-Button-1>', on_select)
listbox.bind('<<ListboxSelect>>', on_select)
listbox_update(grp)
plt.show()