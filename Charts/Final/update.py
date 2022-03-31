import h5py
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

def update():
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