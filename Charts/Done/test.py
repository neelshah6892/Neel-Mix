# -*- coding: utf-8 -*-
import dash
import dash_core_components as dcc
import dash_html_components as html
import pandas as pd

app = dash.Dash()

df = pd.read_excel("Data.xlsx", parse_dates=True, sheet_name=None)
print(df)
colors = {
    'background': '#111111',
    'text': '#7FDBFF'
}

app.layout = html.Div(style={'backgroundColor': colors['background']}, children=[
   html.H1(
      children='Charts App',
      style={
         'textAlign': 'center',
         'color': colors['text']
      }
   ),
  html.Label('Dropdown'),
   dcc.Dropdown(
      options=[{'label':df[0], 'value': str(df[1])}
                for df in zip(df[0].unique(), df[0].unique())],
        #multi=True
   ),
   html.Div(id='graphs'),
   dcc.Graph(
      id='example-graph-2',
      figure={
         'data': [
            {'x': [1, 2, 3], 'y': [4, 1, 2], 'type': 'line', 'name': 'Delhi'},
            {'x': [1, 2, 3], 'y': [2, 4, 5], 'type': 'bar', 'name': u'Mumbai'},
         ],
         'layout': {
            'plot_bgcolor': colors['background'],
            'paper_bgcolor': colors['background'],
            'font': {
               'color': colors['text']
            }
         }
      }
   )
])

if __name__ == '__main__':
   app.run_server(debug=True)