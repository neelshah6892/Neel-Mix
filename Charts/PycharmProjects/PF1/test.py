import tkinter
import tkinter.filedialog
import pandas as pd
import xlrd
import numpy as np
import h5py
import tables

root = tkinter.Tk()
var1 = int()
var2 = int()

def print_path():
    f = tkinter.filedialog.askopenfilename(
        parent=root, initialdir='C:/',
        title='Choose file',
        filetypes=[('xlsx file', 'xlsx'),
                   ('xls file', 'xls'),
                   ('csv file', '.csv')]
        )

    print(f)
    xl = pd.read_excel(f)
    print(xl.count())
    xl.to_hdf('data.h5', key='df', mode='a')
    a = xlrd.open_workbook(f)
    print(a.sheet_names())

    with h5py.File('data.h5', 'r') as f:
        data = f['df']
        print(data)

    file = h5py.File('data.h5', 'r')
    dataset = []
    for i in file.values():
        print(dataset.append(i))

def var_status():
    print(var1, var2)

b1 = tkinter.Button(root, text='Print path', command=print_path)
b1.grid(row=0, column=0)
opt = tkinter.Checkbutton(root, text="abc", vari=var1)
opt.grid(row=0, column=1)
sec = tkinter.Checkbutton(root, text="def", vari=var2)
sec.grid(row=0, column=2)
b2 = tkinter.Button(root, text="B2", command=var_status)
b2.grid(row=0, column=3)

root.mainloop()