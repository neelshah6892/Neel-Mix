import h5py
import xlrd
import pandas as pd
from tkinter import filedialog


class abc():
    #global f
    #global xl
    #global grp
    def loadfile(self):
        
        f = filedialog.askopenfilename(
            initialdir='C:/',
            title='Choose file',
            filetypes=[('xlsx file', 'xlsx'),
                    ('xls file', 'xls'),
                    ('csv file', '.csv')]
        )
        h = h5py.File('data.h5', 'w')
        xls = xlrd.open_workbook(f, on_demand=True)
        
        self.xl = xls.sheet_names()
        for sheet in xls.sheets():
            df = pd.read_excel(f, parse_dates=True, sheet_name=sheet.name)
            #global grp
            d = df['30DAY_IMPVOL_100.0%MNY_DF']
            print(d[1])
            self.grp = h.create_group(sheet.name)
            print(grp)
            for i in range(sheet.ncols):
                sb = sheet.cell_value(0, i)
                sbgrp = grp.create_group(sb)
                print(sbgrp)
                dset = sbgrp.create_dataset(sbgrp, data=d[i])
                print(dset)

