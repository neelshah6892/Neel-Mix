from kivy.app import App
from kivy.lang import Builder
from kivy.uix.screenmanager import ScreenManager, Screen
from kivy.core.window import Window
from kivy.clock import Clock
import xlsxwriter
import minimalmodbus
#import matplotlib
#import pandas as pd
import os


#Window.size = (800, 480)
#Window.borderless = True
Builder.load_string("""
<WelcomeScreen>:
    BoxLayout:
        Label:
            text: 'Welcome'
            size_hint: .2, .1
            pos_hint: {"right": 0.9, 'top': 0.1}
<DetailsScreen>:
    FloatLayout:
        Label:
            text: 'Company Name:'
            font_size: '20sp'
            size_hint: .2 , .1
            pos_hint: {"right": 0.3, 'top': 0.9}
        TextInput:
            id: cname
            size_hint: .2 , .1
            use_bubble: True
            pos_hint: {"right": 0.6, 'top': 0.9}
        Label:
            text: 'Job Name:'
            font_size: '20sp'
            size_hint: .2 , .1
            pos_hint: {"right": 0.3, 'top': 0.7}
        TextInput:
            id: jobname
            size_hint: .2, .1
            use_bubble: True
            pos_hint: {"right": 0.6, 'top': 0.7}
        Label:
            text: 'Job Number:'
            font_size: '20sp'
            size_hint: .2, .1
            pos_hint: {"right": 0.3, 'top': 0.5}
        TextInput:
            id: jobnumber
            size_hint: .2, .1
            use_bubble: True
            pos_hint: {"right": 0.6, 'top': 0.5}
        Button:
            text: 'Next'
            font_size: '20sp'
            on_press: root.manager.current = 'main'
            on_press: root.createExcel()
            size_hint: .2, .1
            pos_hint: {"right": 1, 'bottom': 1}
<MainScreen>:
    FloatLayout:
        Label:
            text: 'Set Frequency:'
            font_size: '20sp'
            id: freq
            size_hint: .2 , .1
            pos_hint: {"right": 0.2, 'top': 1}
        Label:
            text: ""
            font_size: '20sp'
            size_hint: .1, .1
            pos_hint: {"right": 0.3, 'top': 1}
        Label:
            id: elapsed_time
            font_size: '20sp'
            size_hint: .1, .1
            pos_hint: {"right": 0.3, 'top': 1}
        Label:
            text: 'Set Time:'
            font_size: '20sp'
            size_hint: .2, .1
            pos_hint: {"right": 0.4, 'top': 1}
        Label:
            text: 'Elapsed Time:'
            font_size: '20sp'
            size_hint: .2, .1
            pos_hint: {"right": 0.2, 'top': 0.8}
        Label:
            id: frequency
            font_size: '20sp'
            text: 'Output Frequency:'
            size_hint: .2, .1
            pos_hint: {"right": 0.4, 'top': 0.8}
        Label:
            id: displacement
            font_size: '20sp'
            text: 'Displacement:'
            size_hint: .2, .1
            pos_hint: {"right": 0.6, 'top':0.8}
        Label:
            text: ""
            font_size: '20sp'
            size_hint: .1, .1
            pos_hint: {"right": 0.6, 'top': 0.8}
        Button:
            text: 'Timer Enable'
            font_size: '20sp'
            size_hint: .2, .2
            pos_hint: {"right": 1, 'top':1}
        Button:
            text: 'Run/Stop'
            font_size: '20sp'
            size_hint: .2, .2
            pos_hint: {"right": 1, 'top': 0.8}
        Button:
            text: 'Download Data'
            font_size: '20sp'
            on_press: root.manager.current = 'copy'
            size_hint: .2, .1
            pos_hint: {"right": 0.8, 'top': 0.1}
        Button:
            text: 'End Process'
            font_size: '20sp'
            on_press: root.manager.current = 'copy'
            size_hint: .2, .1
            pos_hint: {"right": 1, 'top': 0.1}
        Label:
            text: 'Setup & Operations'
            font_size: '40sp'
            size_hint: .6, .1
            pos_hint: {"left": 1, 'top': 0.1}
<CopyScreen>:
    BoxLayout:
        Button:
            text: 'Run Again'
            on_press: root.manager.current = 'welcome'
""")

# Declare both screens
class WelcomeScreen(Screen):
    def on_enter(self):
        #print('start threading')
        Clock.schedule_once(self.switch, 5)

    def switch(self, *args):
        self.manager.current = "details"
    pass

class DetailsScreen(Screen):
    def createExcel(self):
        file = self.ids.cname.text
        try:
            os.makedirs(file)
        except OSError as e:
            print(e)
        book = self.ids.jobname.text + self.ids.jobnumber.text
        workbook = xlsxwriter.Workbook(file + ".xlsx")
        workbook.add_worksheet(book)
        workbook.close()
    pass

class MainScreen(Screen):
    #print(minimalmodbus._getDiagnosticString())

    """minimalmodbus.BAUDRATE = 9600
    minimalmodbus.PARITY = 'N'
    minimalmodbus.BYTESIZE = 8
    minimalmodbus.STOPBITS = 2
    minimalmodbus.TIMEOUT = 0.1
    instrument = minimalmodbus.Instrument('COM5', 3)  # port and slave
    instrument.debug = True
    freq = instrument.read_register(3029, 2)
    ofreq = instrument.read_register(3030, 2) #register number, number decimals
    dis = instrument.read_register(1076, 2)
    #setf = print(instrument.read_registers(8450, 3))
    #instrument.write_register(8193, 50, 2)
    instrument.write_register(8192, 1)
    instrument.write_register(8192, 10)"""


class CopyScreen(Screen):
    # Copy file to usb
    pass

# Create the screen manager
sm = ScreenManager()
sm.add_widget(WelcomeScreen(name='welcome'))
sm.add_widget(DetailsScreen(name='details'))
sm.add_widget(MainScreen(name='main'))
sm.add_widget(CopyScreen(name='copy'))

class TestApp(App):

    def build(self):
        return sm
        #return SimpleButton()

if __name__ == '__main__':
    TestApp().run()
    