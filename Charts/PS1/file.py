import xlrd
import kivy
from kivy.app import App

kivy.require('1.11.1')

from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button

class Filechooser(BoxLayout): 
    def select(self, *args): 
        try: 
            self.label.text = args[1][0]
            xls = xlrd.open_workbook(self.label.text, on_demand=True)
        except Exception as e: 
            print(e)

# Create the App class 
class FileApp(App): 
    def build(self): 
        return Filechooser() 

# run the App 
if __name__ == '__main__': 
    FileApp().run() 