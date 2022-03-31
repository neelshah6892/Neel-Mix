import tkinter as tk
import tkinter.filedialog
from tkinter import ttk
import pandas as pd
import xlrd
import h5py
import matplotlib
import matplotlib.pyplot as plt


class simpleapp(tk.Tk):
    def __init__(self, *args, **kwargs):
        tk.Tk.__init__(self, *args, **kwargs)
        #self.initialize()
        """screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        print(screen_height)
        print(screen_width)"""
        container = tk.Frame(self)
        container.pack(side="top", fill="both", expand = True)
        container.grid_rowconfigure(0, weight=1)
        container.grid_columnconfigure(0, weight=1)
        self.frames = {}

        for F in (one, two):
            frame = F(container, self)
            self.frames[F] = frame
            frame.grid(row=0, column=0, sticky="nsew")

        self.show_frame(one)

    def show_frame(self, cont):
        frame = self.frames[cont]
        frame.tkraise()

class one(tk.Frame):
    def print_path(self, parent):
        f = tkinter.filedialog.askopenfilename(
            parent=self, initialdir='C:/',
            title='Choose file',
            filetypes=[('xlsx file', 'xlsx'),
                       ('xls file', 'xls'),
                       ('csv file', '.csv')]
            )
        print(f)
        b1 = tkinter.Button(self, text='Print path')
        b1.grid(row=0, column=0, sticky='EW')
        xls = xlrd.open_workbook(f, on_demand=True)
        print(xls.sheet_names())
        f = h5py.File('data.h5', 'w')
    
        for sheet in xls.sheets():
            grp = f.create_group(sheet.name)
            print(grp)
            for i in range(sheet.ncols):
                sb = sheet.cell_value(0,i)
                sbgrp = grp.create_group(sb)
                print(sbgrp)
                dset = sbgrp.create_dataset(name="GRP 1", shape=(200, ), dtype=str)
                print(dset)
                try:
                    for j in range(sheet.nrows):
                        #ss = sheet.col_values(j)
                        d1 = sheet.col_values(j)
                        #dset = sbgrp.create_dataset()
                        print(d1)
                except Exception as e:
                    print(e)
                    continue

class two(tk.Frame):
    def initialize(self, parent, controller):
        self.grid()

        
        #self.grid_columnconfigure(0,weight=1)
        opt = tkinter.Checkbutton(self, text="abc")
        opt.grid(row=0, column=1)
        """sec = tkinter.Checkbutton(self, text="abc")
        sec.grid(row=0, column=2)"""
        b2 = tkinter.Button(self, text="B2")
        b2.grid(row=0, column=3)


if __name__ == "__main__":
    app = simpleapp()
    app.title("App")
    app.geometry("1280x1024")
    app.mainloop()