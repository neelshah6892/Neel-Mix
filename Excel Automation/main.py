import openpyxl as xl
#import xlwings as xw
import os
import sys

print(os.path.dirname(sys.executable))

path = "D://IV.xlsx"
wb_obj = xl.load_workbook(path)
sheet_obj = wb_obj.active
cell_obj = sheet_obj.cell(row = 5, column = 8)
print(cell_obj.value)



#wb = xw.Book(path)
#my_values = wb.sheets['Sheet1'].range('H5:K5').options(ndim=2).value 
#wb.sheets['Sheet1'].range('M1:P6').value = my_values