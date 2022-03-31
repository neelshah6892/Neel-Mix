import pandas as pd
import h5py

df = pd.DataFrame([['blue', 'a', 'a1'], ['blue', 'a', 'a2'],
                   ['blue', 'b', 'b1'], ['red', 'c', 'c1']],
                  columns=list('ABC'))

## read in file
#df = pd.read_excel("C:\\Users\\Administrator\\Desktop\\Data.xlsx")

## create group strings
group_strings = ['/'+'/'.join(route) for route in df.values]

# ['/blue/a/a1', '/blue/a/a2', '/blue/b/b1', '/red/c/c1']

## create HDF5 groups
with h5py.File('file.h5', 'w') as f:
    for group in group_strings:
        for item in ('X', 'Y'):
            grp = f[group+'/'+item]