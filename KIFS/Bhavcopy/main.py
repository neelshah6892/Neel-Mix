import h5py
import pandas as pd
import glob

path = r'C:\\Users\\rocki\\Desktop\\Bhavcopy\\Downloads'  # use your path
all_files = glob.glob(path + "/*.csv")

li = []

for filename in all_files:
    df = pd.read_csv(filename, index_col=None, chunksize=100, header=0)
    li.append(df)

frame = pd.concat(li, axis=0, ignore_index=True)
