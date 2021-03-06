from tkinter import *
from tkinter import ttk
from tkinter import messagebox

class EisenMatrix:

    def __init__(self, master):
        master.wm_title("Eisenhower Matrix")
        frame = ttk.Frame(master)
        frame.grid(column=0, row=0, sticky=(N, S, E, W))

        #Create the left hand side vertical labels
        #the mess is because letters aren't properly centered with \n's
        leftLabels = 2*[[]]
        leftLetterLabels = 2 * [[]]
        for i,label in enumerate(("Important", "Not Important")):
            leftLabels[i] = ttk.Frame(frame)
            leftLabels[i].grid(column=0, row=i+1)
            leftLetterLabels[i] = len(label)*[[]]
            for j, letter in enumerate(label):
                leftLetterLabels[i][j] = ttk.Label(leftLabels[i], text=letter)
                leftLetterLabels[i][j].grid(column=0, row=j)

        #Create the top side labels
        topLabels = 2*[[]]
        for i,label in enumerate(("Urgent", "Not Urgent")):
            topLabels[i] = ttk.Label(frame, text=label)
            topLabels[i].grid(column=(i+1), row=0)

        #Create text entry boxes and scroll bars on them
        textholders = 4*[[]]
        scrollbars = 4*[[]]
        self.text = 4*[[]]
        c = 0
        bgcolors=["red", "green", "yellow", "grey"]
        for i in range(2):
            for j in range(2):
                textholders[c] = Frame(frame, borderwidth=3)
                scrollbars[c] = Scrollbar(textholders[c])
                scrollbars[c].grid(column=1,row=0, sticky=(N,S))
                self.text[c] = Text(textholders[c], background=bgcolors[c], \
                                        width=40, height=15, yscrollcommand=scrollbars[c].set)
                self.text[c].grid(column=0,row=0,  sticky=(N, S, E, W))
                scrollbars[c].config(command=self.text[c].yview)
                textholders[c].grid(column=i+1, row = j+1, sticky=(N, S, E, W))
                textholders[c].columnconfigure(0, weight=1)
                textholders[c].rowconfigure(0, weight=1)
                c+=1

        #Add buttons
        buttonFrame = ttk.Frame(frame)
        buttonFrame.grid(column=2, row=3)
        ttk.Button(buttonFrame, text="Load", command = self.open).pack(side=LEFT)
        ttk.Button(buttonFrame, text="Save", command = self.save).pack(side=LEFT)
        ttk.Button(buttonFrame, text="Quit", command=frame.quit).pack(side=LEFT)

        #Make it resizable
        master.columnconfigure(0, weight=1)
        master.rowconfigure(0, weight=1)
        frame.columnconfigure(1, weight=1)
        frame.rowconfigure(1, weight=1)
        frame.columnconfigure(2, weight=1)
        frame.rowconfigure(2, weight=1)

    def open(self):
        if messagebox.askyesno("Load", "Delete entries and load save?"):
            try:
                with open("save", 'r') as f:
                    ts = eval(f.read())
            except:
                messagebox.showerror("Read Error", "Couldn't read save"\
                                         ". Nothing read.")
 
            for i,obj in enumerate(self.text):
                    obj.delete(1.0, END)
                    obj.insert(1.0, ts[i])

    def save(self):
        if messagebox.askyesno("Save", "Replace old save with entries?"):
            ts = []
            for i,obj in enumerate(self.text):
                t = obj.get(1.0, END)
                ts.append(t.strip())
            try:
                with open("save", 'w') as f:
                    f.write(str(ts))
            except:
                messagebox.showerror("Write Error", "Couldn't write to save."\
                                         " Nothing saved.")

if __name__ == '__main__':
    root = Tk()
    app = EisenMatrix(root)
    root.mainloop()