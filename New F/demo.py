from kivy.app import App
from kivy.lang import Builder
from kivy.core.window import Window
from kivy.uix.label import Label
from kivy.properties import NumericProperty
from kivy.uix.boxlayout import BoxLayout

Builder.load_string('''
<CustomLabel>
    text: '{}'.format(root.value)

<WorkingClass>:
    orientation: 'vertical'

    Button:
        text: 'Update'
        on_release: root.update()

<MainLayout>
    orientation: 'vertical'
    
    WorkingClass:
        id: working_class
        
    CustomLabel:
        value: working_class.a

''')

class CustomLabel(Label):
    value = NumericProperty()

class WorkingClass(BoxLayout):
    a = NumericProperty()
    
    def __init__(self, *args, **kwargs):

        super(WorkingClass, self).__init__(*args, **kwargs)

        self.a = 5

    def update(self):
        self.a += 1
        print(self.a)

class MainLayout(BoxLayout):

    def __init__(self, *args, **kwargs):

        super(MainLayout, self).__init__(*args, **kwargs)

        self.workingClass = WorkingClass()
        self.customLabel = CustomLabel(value=self.workingClass.a)
        self.workingClass.bind(a=self.customLabel.setter('value'))
        self.add_widget(self.customLabel)
        self.add_widget(self.workingClass)


class MyApp(App):
    def build(self):
        return MainLayout()

if __name__ == "__main__":
    MyApp().run()