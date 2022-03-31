import h5py
import numpy as np
import pandas as pd

hdf = pd.HDFStore('data.h5', mode='r')
print(hdf.keys())
df1 = hdf.get('JUST IN Equity')
print(df1)
