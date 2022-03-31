import tkinter
import matplotlib.pyplot as plt

from matplotlib.backends.backend_tkagg import (
    FigureCanvasTkAgg, NavigationToolbar2Tk)
# Implement the default Matplotlib key bindings.
from matplotlib.backend_bases import key_press_handler
from matplotlib.figure import Figure

import numpy as np
import loadfile
from loadfile import abc
from update import update

root = tkinter.Tk()
root.wm_title("Final App")

fig = Figure(figsize=(5, 4), dpi=100)
t = np.arange(0, 3, .01)
fig.add_subplot(111).plot(t, 2 * np.sin(2 * np.pi * t))
plt.style.use('dark_background')

canvas = FigureCanvasTkAgg(fig, master=root)  # A tk.DrawingArea.
canvas.draw()
canvas.get_tk_widget().pack(side=tkinter.TOP, fill=tkinter.BOTH, expand=1)

toolbar = NavigationToolbar2Tk(canvas, root)
toolbar.update()
canvas.get_tk_widget().pack(side=tkinter.BOTTOM, fill=tkinter.BOTH, expand=1)


def on_key_press(event):
    print("you pressed {}".format(event.key))
    key_press_handler(event, canvas, toolbar)


canvas.mpl_connect("key_press_event", on_key_press)


def _quit():
    root.quit()     # stops mainloop
    root.destroy()  # this is necessary on Windows to prevent
                    # Fatal Python Error: PyEval_RestoreThread: NULL tstate


def on_keyrelease(event):
    value = event.widget.get()
    value = value.strip().lower()
    if value == '':
        data = test_list
    else:
        data = []
        for item in test_list:
            if value in item.lower():
                data.append(item)                
    listbox_update(data)


def listbox_update(data):
    listbox.delete(0, 'end')
    data = sorted(data, key=str.lower)

    for item in data:
        listbox.insert('end', item)


def on_select(event):
    print('(event) previous:', event.widget.get('active'))
    print('(event)  current:', event.widget.get(event.widget.curselection()))
    print('---')

test_list = ('JUST IN Equity', 'UJJIVAN IN Equity' )

button = tkinter.Button(master=root, text="Quit", command=_quit)
button.pack(side=tkinter.RIGHT)
btn1 = tkinter.Button(master=root, text="Load File", command=lambda: [loadfile()])
btn1.pack(side=tkinter.RIGHT)

#test_list = (grp)
#print(loadfile)
entry = tkinter.Entry(master=root)
entry.pack(side=tkinter.LEFT)
entry.bind('<KeyRelease>', on_keyrelease)
listbox = tkinter.Listbox(root)
listbox.pack(side=tkinter.LEFT)
#listbox.bind('<Double-Button-1>', on_select)
listbox.bind('<<ListboxSelect>>', on_select)
listbox_update(test_list)

a = abc()
print(a.grp)
tkinter.mainloop()
