import pandas as pd
import h5py
import numpy as np
import matplotlib.pyplot as plt


df = pd.read_excel("C:\\Users\\Administrator\\Desktop\\Data.xlsx", index_col=0, parse_dates=True, sheet_name="JUST IN Equity")
df_new = df.rename(columns={'30DAY_IMPVOL_100.0%MNY_DF': '30DAY', '60DAY_IMPVOL_100.0%MNY_DF': '60DAY', '1ST_MTH_IMPVOL_100.0%MNY_DF': '1M', '2ND_MTH_IMPVOL_100.0%MNY_DF': '2M', 'VOLATILITY_10D': 'V10D', 'VOLATILITY_30D': 'V30D', 'VOLATILITY_60D': 'V60D', 'VOLATILITY_90D': 'V90D'})
print(df_new.keys())
f = h5py.File('data.h5', mode="r")
a = f.keys()
print(a)
b = np.array(f.get('/df/axis0'))
#c prints index range
c = np.array(f.get('/df/axis1'))
"""d = np.array(f.get('/df/block0_items'))
e = np.array(f.get('/df/block0_values'))
f = np.array(f.get('/df/block1_items'))"""
#g = f.get('/df/block1_values')
#g = np.array(f.get('/df/block1_values'))
print(b)
print(c)
"""print(d)
print(e)
print(f)"""
#print(g)
#h = np.arange(c.all())