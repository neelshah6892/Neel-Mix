from kivy.app import App
from kivy.config import Config
from kivy.core.text import LabelBase
from kivy.network.urlrequest import UrlRequest
import time,json

header={"Content-Type":"application/x-www-form-urlencoded","Accept":"text/plain"}
api="http://api.openweathermap.org/data/2.5/forecast?q=London,us&appid=b6cc73b93b59e2681116d41df33c0313"
#fontfile="byom_icon.ttf"
Config.set("graphics","width","400")
Config.set("graphics","height","700")
class ElseDongusuApp(App):
    def onSuccess(self,req,data):
        print(data)
        dataJson=json.loads(data.decode()) if not isinstance(data,dict) else data
        print(dataJson)
    def on_start(self):
       req=UrlRequest(api,on_success=self.onSuccess,req_headers=header)


if __name__ == '__main__':
    ElseDongusuApp().run()