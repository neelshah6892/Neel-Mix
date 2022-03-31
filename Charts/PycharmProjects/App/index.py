from kivy.app import App
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
from kivy.uix.screenmanager import ScreenManager, Screen, FadeTransition
from kivy.uix.checkbox import CheckBox
from kivy.uix.textinput import TextInput
from kivy.uix.filechooser import FileChooserIconView
from kivy.garden.matplotlib.backend_kivyagg import FigureCanvasKivyAgg
import matplotlib.pyplot as plt
from kivy.uix.dropdown import DropDown
import xlrd
import pandas as pd
import seaborn as sns


class NSApp(App):
    def filepicker(self):
        print("Welcome")

    def build(self):
        sm = ScreenManager()
        #for loop for creating multiple screens
        fs = Screen(name='first')
        layout = BoxLayout(orientation='vertical')
        fs.add_widget(layout)
        l1 = BoxLayout(size_hint=(1,.2))
        xls = xlrd.open_workbook(r'C:\\Users\\Administrator\\Desktop\\Data.xlsx', on_demand=True)
        for sheet in xls.sheets():
            df = pd.read_excel(xls, sheet_name=sheet)
            print(df)
        """for sheet in xls.sheets():
            dropdown = DropDown()
            bt = Button(text='%s'% sheet)
            bt.bind(on_release=lambda bt: dropdown.select(bt.text))
            dropdown.add_widget(bt)"""
        mbtn = l1.add_widget(Button(text='Select'))
        #mbtn.bind(on_release=dropdown.open)
        #dropdown.bind(on_select=lambda instance, x: setattr(mbtn, 'text', x))
        #for i in range(sheet.ncols):
        l2 = GridLayout(rows=6)
        for i in range (sheet.ncols):
            #l1.add_widget(CheckBox(text=sheet.cell_value(0,i), active=True))
            l2.add_widget(CheckBox(active=True, width=10))
            l2.add_widget(Label(text=sheet.cell_value(0,i)))
        l1.add_widget(l2)
        btn = l1.add_widget(Button(text='Input File'))
        #btn.bind(on_release=self.load)
        layout.add_widget(l1)
        #layout.add_widget(Label(text='Charts'))
        plt.style.use('dark_background')
        plt.grid(True)
        plt.plot([1, 23, 2, 4])
        plt.ylabel('some numbers')
        plt.autoscale()
        layout.add_widget(FigureCanvasKivyAgg(plt.gcf()))
        sm.add_widget(fs)
        return sm


if __name__ == '__main__':
    app = NSApp()
    app.run()