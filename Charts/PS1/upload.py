import pandas as pd
from dash import Dash
import dash_core_components as dcc
import dash_html_components as html
import plotly.express as px
import h5py
from flask import * 
app = Flask(__name__)

@app.route('/')  
def upload():  
    return render_template("file_upload_form.html")  

@app.route('/success', methods = ['POST'])  
def success():  
    if request.method == 'POST':  
        f = request.files['file']
        f.save(f.filename)
        return render_template("success.html", name = f.filename)

@app.route('/charts')
def loadchart():
    return render_template("file_upload_form.html")

if __name__ == '__main__':  
    app.run(debug = True)