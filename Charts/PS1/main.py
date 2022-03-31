from tkinter import *
from tkinter import filedialog
from tkinter import ttk
import pandas as pd
import matplotlib.pyplot as plt
from tkinter import messagebox
from matplotlib.widgets import CheckButtons

window = Tk()
window.title("APP")
window.geometry("1280x1024")


def print_path():
    f = filedialog.askopenfilename(
        parent=window, initialdir='C:/',
        title='Choose file',
        filetypes=[('xlsx file', 'xlsx'),
                ('xls file', 'xls'),
                ('csv file', '.csv')]
        )
    print(f)
    df = pd.read_excel(f, parse_dates=True)
    df_new = df.rename(columns={'30DAY_IMPVOL_100.0%MNY_DF': '30D_IV', '60DAY_IMPVOL_100.0%MNY_DF': '60D_IV', '1ST_MTH_IMPVOL_100.0%MNY_DF': '1M_IV', '2ND_MTH_IMPVOL_100.0%MNY_DF': '2M_IV', 'VOLATILITY_10D': '10D_HV', 'VOLATILITY_30D': '30D_HV', 'VOLATILITY_60D': '60D_HV', 'VOLATILITY_90D': '90D_HV', 'CHG_PCT_1D': 'CHG', '1M_PUT_IMP_VOL_25DELTA_DFLT': '1M_25DP', '1M_CALL_IMP_VOL_25DELTA_DFLT': '1M_25DC', '30DAY_IMPVOL_90.0%MNY_DF': '30D_90MNY', '30DAY_IMPVOL_110.0%MNY_DF': '30D_110MNY', 'PX_LAST': 'PRICE', 'PUT_CALL_VOLUME_RATIO_CUR_DAY': 'PCR', 'OPEN_INT_TOTAL_CALL': 'OI_CALL', 'OPEN_INT_TOTAL_PUT': 'OI_PUT'},index={'ONE': 'one'})
    plt.style.use('dark_background')
    
    #a = "JUST IN Equity"
    """df_new.plot(kind='line', x=a, y='30D_IV',ax=ax, color='red')
    df_new.plot(kind='line', x=a, y='60D_IV', ax=ax, color='green')
    df_new.plot(kind='line', x=a, y='1M_IV', ax=ax, color='blue')
    df_new.plot(kind='line', x=a, y='2M_IV', ax=ax, color='aqua')
    df_new.plot(kind='line', x=a, y='10D_HV', ax=ax, color='navy')
    df_new.plot(kind='line', x=a, y='30D_HV', ax=ax, color='teal')
    df_new.plot(kind='line', x=a, y='60D_HV', ax=ax, color='yellow')
    df_new.plot(kind='line', x=a, y='90D_HV', ax=ax, color='yellowgreen')"""
    df_new.plot(subplots=True, figsize=(8, 8)); plt.legend(loc='best')
    ax = plt.gca()
    lines = ax.get_lines()

    # Make checkbuttons with all plotted lines with correct visibility
    rax = plt.axes([0.05, 0.4, 0.1, 0.15])
    labels = [str(line.get_label()) for line in lines]
    visibility = [line.get_visible() for line in lines]
    check = CheckButtons(rax, labels, visibility)

    def func(label):
        lines[labels.index(label)].set_visible(not lines[labels.index(label)].get_visible())
        plt.draw()

    check.on_clicked(func)
    plt.show()
    messagebox.showinfo(title= "Status", message="Completed")


btn1 = Button(window, text="Open Excel", command=print_path)
btn1.grid(row=0, column=1)

window.mainloop()