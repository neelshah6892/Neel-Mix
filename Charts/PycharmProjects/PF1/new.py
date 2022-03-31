import pandas as pd
import h5py
import xlrd

df = pd.read_excel("C:\\Users\\Administrator\\Desktop\\Data.xlsx")
df.to_hdf("new.h5", 'data', mode="w")
a = xlrd.open_workbook("C:\\Users\\Administrator\\Desktop\\Data.xlsx")
b = a.sheet_names()
f = h5py.File('new.h5', 'w')
grp = f.create_group(b[1])
print(grp)
dset = f.create_dataset("default")
