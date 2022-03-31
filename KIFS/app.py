
import base64, datetime, io
from plotly.graph_objs import graph_objs as go
import dash
from dash.dependencies import Input, Output, State
import dash_core_components as dcc, dash_html_components as html, dash_table, time, pandas as pd, webbrowser
from plotly.express import express as px
from plotly.io import io as pio
external_stylesheets = [
 'https://codepen.io/chriddyp/pen/bWLwgP.css']
pio.templates.default = 'plotly_dark'
app = dash.Dash(__name__, external_stylesheets=external_stylesheets, meta_tags=[{'name':'viewport',  'content':'width=device-width'}])
server = app.server
app.title = 'Charts Ticker App'
app.config.suppress_callback_exceptions = True
app.layout = html.Div([
 dcc.Upload(id='upload-data',
   children=(html.Div([
  'Drag and Drop or ',
  html.A('Select Files')])),
   style={'width':'100%',
  'height':'30px',
  'lineHeight':'30px',
  'borderWidth':'1px',
  'borderStyle':'dashed',
  'borderRadius':'5px',
  'textAlign':'center',
  'margin':'10px'},
   multiple=True),
 html.Div(id='output-data-upload')])

def parse_contents(contents, filename, date):
    global df
    content_type, content_string = contents.split(',')
    decoded = base64.b64decode(content_string)
    try:
        if 'xls' in filename:
            df = pd.read_excel((io.BytesIO(decoded)), sheet_name=None)
    except Exception as e:
        try:
            print(e)
            return html.Div([
             'There was an error processing this file.'])
        finally:
            e = None
            del e

    return html.Div([
     dcc.Dropdown(id='Manager',
       options=[{'label':i,  'value':i} for i in df]),
     dcc.Graph(id='funnel-graph')])


@app.callback(Output('output-data-upload', 'children'), [
 Input('upload-data', 'contents')], [
 State('upload-data', 'filename'),
 State('upload-data', 'last_modified')])
def update_output(list_of_contents, list_of_names, list_of_dates):
    if list_of_contents is not None:
        children = [parse_contents(c, n, d) for c, n, d in zip(list_of_contents, list_of_names, list_of_dates)]
        return children


@app.callback(dash.dependencies.Output('funnel-graph', 'figure'), [
 dash.dependencies.Input('Manager', 'value')])
def update_graph(Manager):
    if Manager == 'All Managers':
        df_plot = df.copy()
        print(df_plot)
    else:
        df_plot = [df == Manager]
        print(df_plot)
    for template in ('plotly_dark', ):
        trace1 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['30DAY_IMPVOL_100.0%MNY_DF']), name='30D_IV')
        trace2 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['60DAY_IMPVOL_100.0%MNY_DF']), name='60D_IV')
        trace3 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['1ST_MTH_IMPVOL_100.0%MNY_DF']), name='1M_IV')
        trace4 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['2ND_MTH_IMPVOL_100.0%MNY_DF']), name='2M_IV')
        trace5 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['VOLATILITY_10D']), name='10D_HV')
        trace6 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['VOLATILITY_30D']), name='30D_HV')
        trace7 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['VOLATILITY_60D']), name='60D_HV')
        trace8 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['VOLATILITY_90D']), name='90D_HV')
        trace9 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['CHG_PCT_1D']), name='CHG')
        trace10 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['1M_PUT_IMP_VOL_25DELTA_DFLT']), name='1M_25DP')
        trace11 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['1M_CALL_IMP_VOL_25DELTA_DFLT']), name='1M_25DC')
        trace12 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['30DAY_IMPVOL_90.0%MNY_DF']), name='30D_90MNY')
        trace13 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['30DAY_IMPVOL_110.0%MNY_DF']), name='30D_110MNY')
        trace14 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['PX_LAST']), name='PRICE', yaxis='y2')
        trace15 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['PUT_CALL_VOLUME_RATIO_CUR_DAY']), name='PCR')
        trace16 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['OPEN_INT_TOTAL_CALL']), name='OI_CALL')
        trace17 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['OPEN_INT_TOTAL_PUT']), name='OI_PUT')
        trace18 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['OIRatio']), name='OIRATIO')
        trace19 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['Skew']), name='SKEW')
        trace20 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['Skew/IV']), name='SKEW/IV')
        trace21 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['30IV/10HV']), name='30IV/10HV')
        trace22 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['10-30HV']), name='10-30HV')
        trace23 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['30IV/30HV']), name='30IV/30HV')
        trace24 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['1STIV/10HV']), name='1STIV/10HV')
        trace25 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['IV/NIFTYIV']), name='IV/NIFTYIV')
        trace26 = go.Scatter(x=(df[Manager][Manager]), y=(df[Manager]['Bratio(30IV/10HV Ratio)']), name='Bratio(30IV/10HV Ratio)')
        return {'data':[
          trace1, trace2, trace3, trace4, trace5, trace6, trace7, trace8, trace9, trace10, trace11, trace12, trace13, trace14, trace15, trace16, trace17, trace18, trace19, trace20, trace21, trace22, trace23, trace24, trace25, trace26], 
         'layout':go.Layout(template=template,
           height=600,
           barmode='stack',
           legend_orientation='h',
           uirevision=True,
           xaxis=dict(rangeselector=dict(buttons=(list([
          dict(count=1, label='1 MONTH',
            step='month',
            stepmode='backward'),
          dict(count=3, label='3 MONTH',
            step='month',
            stepmode='backward'),
          dict(count=6, label='6 MONTH',
            step='month',
            stepmode='backward'),
          dict(count=12, label='1 YEAR',
            step='month',
            stepmode='backward'),
          dict(step='all')]))),
           rangeslider=dict(visible=False),
           type='date'),
           yaxis2=dict(overlaying='y',
           side='right'),
           title={'text':'Ticker: {}'.format(Manager),
          'y':0.9,
          'x':0.5,
          'xanchor':'center',
          'yanchor':'bottom'},
           autosize=True)}


url = '127.0.0.1:8050'
chrome_path = 'C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe'
webbrowser.register('chrome', None, webbrowser.BackgroundBrowser(chrome_path))
webbrowser.get('chrome').open_new_tab(url)
app.run_server()