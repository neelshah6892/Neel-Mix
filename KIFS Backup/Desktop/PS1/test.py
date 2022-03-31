import xlrd
import h5py
import numpy as np
import pandas as pd

xls = xlrd.open_workbook(r'C:\\Users\\Administrator\\Desktop\\Data.xlsx', on_demand=True)
f = h5py.File('data.h5', 'w')

for sheet in xls.sheets():
    grp = f.create_group(sheet.name)
    print(grp)
    for i in range(sheet.ncols):
        sb = sheet.cell_value(0,i)
        sbgrp = grp.create_group(sb)
        print(sbgrp)
        df = pd.read_excel('C:\\Users\\Administrator\\Desktop\\Data.xlsx')
        a = df["JUST IN Equity"].tolist()
        print(a)
        #dt = h5py.string_dtype(encoding='ascii')
        dset = sbgrp.create_dataset("default", (100, ), dtype="S10", data=a)
        print(dset)
        """try:
            for j in range(sheet.nrows):
                ss = sheet.col_values(j)
                d1 = sheet.col_values(j)
                #dset = sbgrp.create_dataset()
                print(d1)
        except Exception as e:
            print(e)
            continue"""

