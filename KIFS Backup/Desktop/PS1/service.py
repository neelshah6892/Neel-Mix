import tkinter as tk
import random
import xlrd
    
root = tk.Tk()
# width x height + x_offset + y_offset:
root.geometry("170x200+30+30") 
     
xls = xlrd.open_workbook(r'C:\\Users\\Administrator\\Desktop\\Data.xlsx', on_demand=True)
xl = xls.sheet_names()
#languages = ['Python','Perl','C++','Java','Tcl/Tk']
for sheet in xls.sheets():
   ct = [random.randrange(256) for x in range(3)]
   brightness = int(round(0.299*ct[0] + 0.587*ct[1] + 0.114*ct[2]))
   ct_hex = "%02x%02x%02x" % tuple(ct)
   bg_colour = '#' + "".join(ct_hex)
   l = tk.Label(root, 
                text=xl[xls.sheet_by_index], 
                fg='White' if brightness < 120 else 'Black', 
                bg=bg_colour)
   l.place(x = 20, y = 30, width=120, height=25)
          
root.mainloop()