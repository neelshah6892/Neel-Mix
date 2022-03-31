import datetime
import dash
import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Input, Output
import pandas as pd
import xlrd

app = dash.Dash()

app.layout = html.Div(children=[
    html.Div(children='''
        Data Files:
    '''),
    dcc.Input(id='input', value='', type='text'),
    html.Div(id='output-graph'),
])

@app.callback(
    Output(component_id='output-graph', component_property='children'),
    [Input(component_id='input', component_property='value')]
)
def update_value(input_data):
    df = pd.read_excel('Data.xlsx', parse_dates=True)
    df_new = df.rename(columns={'30DAY_IMPVOL_100.0%MNY_DF': '30D_IV', '60DAY_IMPVOL_100.0%MNY_DF': '60D_IV',
                                '1ST_MTH_IMPVOL_100.0%MNY_DF': '1M_IV', '2ND_MTH_IMPVOL_100.0%MNY_DF': '2M_IV',
                                'VOLATILITY_10D': '10D_HV', 'VOLATILITY_30D': '30D_HV', 'VOLATILITY_60D': '60D_HV',
                                'VOLATILITY_90D': '90D_HV', 'CHG_PCT_1D': 'CHG',
                                '1M_PUT_IMP_VOL_25DELTA_DFLT': '1M_25DP', '1M_CALL_IMP_VOL_25DELTA_DFLT': '1M_25DC',
                                '30DAY_IMPVOL_90.0%MNY_DF': '30D_90MNY', '30DAY_IMPVOL_110.0%MNY_DF': '30D_110MNY',
                                'PX_LAST': 'PRICE', 'PUT_CALL_VOLUME_RATIO_CUR_DAY': 'PCR',
                                'OPEN_INT_TOTAL_CALL': 'OI_CALL', 'OPEN_INT_TOTAL_PUT': 'OI_PUT'}, index={'ONE': 'one'})

    return dcc.Graph(
        id='example-graph',
        figure={
            'data': [
                {'x': df['JUST IN Equity'], 'y': df_new['30D_IV'], 'type': 'line', 'name': '30D_IV', 'legendgroup': 'group1'},
                {'x': df['JUST IN Equity'], 'y': df_new['60D_IV'], 'type': 'line', 'name': '60D_IV', 'legendgroup': 'group1'},
                {'x': df['JUST IN Equity'], 'y': df_new['1M_IV'], 'type': 'line', 'name': '1M_IV', 'legendgroup': 'group1'},
                {'x': df['JUST IN Equity'], 'y': df_new['2M_IV'], 'type': 'line', 'name': '2M_IV', 'legendgroup': 'group1'},
                {'x': df['JUST IN Equity'], 'y': df_new['10D_HV'], 'type': 'line', 'name': '10D_HV', 'legendgroup': 'group2'},
                {'x': df['JUST IN Equity'], 'y': df_new['30D_HV'], 'type': 'line', 'name': '30D_HV', 'legendgroup': 'group2'},
                {'x': df['JUST IN Equity'], 'y': df_new['60D_HV'], 'type': 'line', 'name': '60D_HV', 'legendgroup': 'group2'},
                {'x': df['JUST IN Equity'], 'y': df_new['90D_HV'], 'type': 'line', 'name': '90D_HV', 'legendgroup': 'group2'},
                {'x': df['JUST IN Equity'], 'y': df_new['1M_25DP'], 'type': 'line', 'name': '1M_25DP', 'legendgroup': 'group3'},
                {'x': df['JUST IN Equity'], 'y': df_new['1M_25DC'], 'type': 'line', 'name': '1M_25DC', 'legendgroup': 'group3'},
                {'x': df['JUST IN Equity'], 'y': df_new['30D_90MNY'], 'type': 'line', 'name': '30D_90MNY', 'legendgroup': 'group3'},
                {'x': df['JUST IN Equity'], 'y': df_new['30D_110MNY'], 'type': 'line', 'name': '30D_110MNY', 'legendgroup': 'group3'},
                {'x': df['JUST IN Equity'], 'y': df_new['PRICE'], 'type': 'line', 'name': 'PRICE', 'legendgroup': 'group4'},
                {'x': df['JUST IN Equity'], 'y': df_new['PCR'], 'type': 'line', 'name': 'PCR', 'legendgroup': 'group4'},
                {'x': df['JUST IN Equity'], 'y': df_new['OI_CALL'], 'type': 'line', 'name': 'OI_CALL', 'legendgroup': 'group4'},
                {'x': df['JUST IN Equity'], 'y': df_new['OI_PUT'], 'type': 'line', 'name': 'OI_PUT', 'legendgroup': 'group4'},

            ],
            'layout': {
                'title': input_data,

            }
        }
    )

if __name__ == '__main__':
    app.run_server(debug=True)