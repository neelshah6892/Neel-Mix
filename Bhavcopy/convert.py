import h5py
import pandas as pd
import glob
import pprint

files = glob.glob("C:\\Users\\rocki\\Desktop\\Bhavcopy\\Downloads\\*.csv")

#with h5py.File('data.h5', a) as hdf:
for f in files:
  df = pd.read_csv(f)
  new_df = df.to_hdf('database.h5', key=f ,mode='a')

print(df)

