import dash
import dash_core_components as dcc
import dash_html_components as html
import colorlover as cl
import datetime as dt
import flask
import os
import pandas as pd
import time
import xlrd

app = dash.Dash(
    __name__, 
)
df = pd.read_excel("Data.xlsx", parse_dates=True, sheet_name=None)
print(df)
colors = {
    'background': '#111111',
    'text': '#7FDBFF'
}
server = app.server

app.scripts.config.serve_locally = False


colorscale = cl.scales['9']['qual']['Paired']

app.layout = html.Div([
    html.Div([
        html.H2('Charts App',
                style={'display': 'inline',
                       'float': 'right',
                       'font-size': '2.65em',
                       'margin-left': '7px',
                       'font-weight': 'bolder',
                       'font-family': 'Product Sans',
                       'color': "rgba(117, 117, 117, 0.95)",
                       'margin-top': '20px',
                       'margin-bottom': '0'
                       })
    ]),
    dcc.Dropdown(
        id='stock-ticker-input',
        options=[{'label':df[0], 'value': str(df[1])}
                for df in zip(df[0].unique(), df[0].unique())],
        value=[],
        multi=True
    ),
    html.Div(id='graphs')
], className="container")

def bbands(price, window_size=10, num_of_std=5):
    rolling_mean = price.rolling(window=window_size).mean()
    rolling_std  = price.rolling(window=window_size).std()
    upper_band = rolling_mean + (rolling_std*num_of_std)
    lower_band = rolling_mean - (rolling_std*num_of_std)
    return rolling_mean, upper_band, lower_band

@app.callback(
    dash.dependencies.Output('graphs','children'),
    [dash.dependencies.Input('stock-ticker-input', 'value')])
def update_graph(tickers):
    graphs = []

    if not tickers:
        graphs.append(html.H3(
            "Select a stock ticker.",
            style={'marginTop': 20, 'marginBottom': 20}
        ))
    else:
        for i, ticker in enumerate(tickers):

            #dff = df[df[0] == ticker]

            lines = {
                #'x': dff['d'],
                'y': {'line': df_new['30D_IV']},
                'y': {'line': df_new['60D_IV']},
                #'y': df['60DAY_IMPVOL_100.0%MNY_DF'],
                #'y': df['1ST_MTH_IMPVOL_100.0%MNY_DF'],
                #'y': df['1ST_MTH_IMPVOL_100.0%MNY_DF'],
                #'open': dff['Open'],
                #'high': dff['High'],
                #'low': dff['Low'],
                #'close': dff['Close'],
                'type': 'line',
                'name': ticker,
                'legendgroup': ticker,
                'increasing': {'line': {'color': colorscale[0]}},
                'decreasing': {'line': {'color': colorscale[1]}}
            }
            #bb_bands = bbands(df.Close)
            bollinger_traces = [{
                'x': df['JUST IN Equity'], 'y': df_new['30D_IV'], 'y1': df_new['60D_IV'],
                'type': 'scatter', 'mode': 'lines',
                'line': {'width': 1, 'color': colorscale[(i*2) % len(colorscale)]},
                'legendgroup': ticker,
                'showlegend': True if i == 0 else False,
                'name': '{} - bollinger bands'.format(ticker)
            }] #for i, y in enumerate(bb_bands)]
            graphs.append(dcc.Graph(
                id=ticker,
                figure={
                    'data': [lines] + bollinger_traces,
                    'layout': {
                        #'margin': {'b': 0, 'r': 10, 'l': 60, 't': 0},
                        'legend': {'x': 0}
                    }
                },
                style={'background-color':'#ffffff'}
            ))

    return graphs

if __name__ == '__main__':
    app.run_server(debug=True)