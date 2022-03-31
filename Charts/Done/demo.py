import pandas as pd

df = pd.read_excel("Data.xlsx", parse_dates=True, sheet_name=None)
print(df)


rows = [] 
for data in df: 
    data_row = data['30DAY_IMPVOL_100.0%MNY_DF'] 
    time = data['60DAY_IMPVOL_100.0%MNY_DF'] 
      
    for row in data_row: 
        row['Name']= time 
        rows.append(row) 
  