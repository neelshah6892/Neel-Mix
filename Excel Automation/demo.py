import xlwings as xw
import pandas as pd

path = "D://IV.xlsx"
wb = xw.Book(path)
my_values = wb.sheets['Sheet1'].range('H5:K5').options(ndim=2).value
data = pd.DataFrame(my_values)
print(my_values)
data.to_excel('D://mydata.xlsx')
wb.sheets['Sheet1'].range('M1:P6').value = my_values