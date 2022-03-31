import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import xlrd

#xls = xlrd.open_workbook(r'C:\\Users\\Administrator\\Desktop\\Data.xlsx', on_demand=True)
df = pd.read_excel('C:\\Users\\Administrator\\Desktop\\Data.xlsx', parse_dates=True, sheet_name="JUST IN Equity")
df_new = df.rename(columns={'30DAY_IMPVOL_100.0%MNY_DF': '30DAY', '60DAY_IMPVOL_100.0%MNY_DF': '60DAY', '1ST_MTH_IMPVOL_100.0%MNY_DF': '1M', '2ND_MTH_IMPVOL_100.0%MNY_DF': '2M', 'VOLATILITY_10D': 'V10D', 'VOLATILITY_30D': 'V30D', 'VOLATILITY_60D': 'V60D', 'VOLATILITY_90D': 'V90D'},index={'ONE': 'one'})


"""ts = pd.Series(np.random.randn(1000), index = pd.date_range(
                                '1/1/2000', periods = 1000))
df = pd.DataFrame(np.random.randn(1000, 4),  
   index = ts.index, columns = list('ABCD'))"""

plt.style.use('dark_background')
ax = plt.gca()
df_new.plot(kind='line', x='JUST IN Equity', y='30DAY',ax=ax, color='red')
df_new.plot(kind='line', x='JUST IN Equity', y='60DAY', ax=ax, color='green')
df_new.plot(kind='line', x='JUST IN Equity', y='1M', ax=ax, color='blue')
df_new.plot(kind='line', x='JUST IN Equity', y='2M', ax=ax, color='aqua')
df_new.plot(kind='line', x='JUST IN Equity', y='V10D', ax=ax, color='navy')
df_new.plot(kind='line', x='JUST IN Equity', y='V30D', ax=ax, color='teal')
df_new.plot(kind='line', x='JUST IN Equity', y='V60D', ax=ax, color='yellow')
df_new.plot(kind='line', x='JUST IN Equity', y='V90D', ax=ax, color='yellowgreen')
df_new.plot(subplots=True, figsize=(8, 8)); plt.legend(loc='best')
#for i in range
plt.show()