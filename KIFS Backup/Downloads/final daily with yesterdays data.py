# -*- coding: utf-8 -*-
"""
Created on Mon Dec 23 12:12:02 2019

@author: Administrator
"""


#Importing libraries

import datetime 
import time
import yfinance as yf

import pandas as pd
import xlwings as xw

start_count_time = time.time()

#Location of greek excel and connecting
loc = (r"C:\Users\Administrator\Desktop\GreekExcel\GreekExcel.xls")
wb = xw.Book(loc)
sht = wb.sheets["Daily"]



# to get list from excel

excel_list = []
excel_index = []


#i = "EQUITAS"

# to get list of stocks and their indes in excel_list and excel_index lists defined above

for i in range(4,200):
    if sht.range('a{}'.format(i)).value is not None:
        if sht.range('a{}'.format(i)).value != "":
            z = sht.range('a{}'.format(i)).value
            excel_list.append(z)
            excel_index.append(i)
        else:
            pass
    else:
        pass

    
    

# put calculated data next to respective stocks name in excel] use excel_list and excel_index made above


for i in excel_list:
    
    #setting dates to fetch
    todays_date = datetime.datetime.now()
    end = todays_date - datetime.timedelta(days=1)
    start = end - datetime.timedelta(days=10)
    
    
    # downloading data from yahoo finance    
    exec("""stock_data = yf.download('{}.NS', start=start,end=end)""".format(i,i))


#    # Gettingstock data
#    stock_data = get_history(symbol=i , start = date(2019,12,16) , end = date(2019,12,17))
    stock_data = round(stock_data[['Open','High','Low','Close']] , 2)
    
    # to print updated value to excel 
    updated = stock_data.index[-1]
    
    # Range
    rangea = stock_data['High'][-1] - stock_data['Low'][-1]
    rangeb = stock_data['High'][-2] - stock_data['Low'][-2]
    rangec = stock_data['High'][-3] - stock_data['Low'][-3]

    # Value
    value1 = rangea * 0.382
    value2 = rangeb * 0.382
    value3 = rangec * 0.382
    


    # levels jgd = a jwd = b rounded to  0.05
    a = round((stock_data['High'][-1] - value1 ) * 20)/20  
    b = round((stock_data['Low'][-1] + value1 ) * 20)/20

    a1 = round((stock_data['High'][-2] - value2) * 20)/20
    b1 = round((stock_data['Low'][-2] + value2) * 20)/20

    a2 = round((stock_data['High'][-3] - value3) * 20)/20
    b2 = round((stock_data['Low'][-3] + value3) * 20)/20



    # high value of 4 values for today and yesterday
    valuehigh = max(a,b,a1,b1)
    valuelow = min(a,b,a1,b1)
    
    valuehigh1 = max(a1,b1,a2,b2)
    valuelow1 = min(a1,b1,a2,b2)


    # finding stocks yesterdays high low price
    stock_high1  = stock_data['High'][-1]
    stock_low1 = stock_data['Low'][-1]

    stock_high2 = stock_data['High'][-2]
    stock_low2 = stock_data['Low'][-2]
    

    if a >= b1 and b >= b1 :
        pattern = "2+2"
    elif a <= b1 and b <= b1 :
        pattern = "3+1"
    elif a >= b1 >= b :
        pattern = "2+1"
    else:
        pattern = "no pattern"



    # Quartile calculation for today

    # Buy side
    bq1 = round((stock_data['Close'][-1] + (rangea * 0.118)) * 20)/20 
    bq2 = round((stock_data['Close'][-1] + (rangea * 0.236)) *20)/20
    bq3 = round((stock_data['Close'][-1] + (rangea * 0.382)) *20)/20
    bq4 = round((stock_data['Close'][-1] + (rangea * 0.618)) *20)/20  
    bq5 = round((stock_data['Close'][-1] + (rangea * 1)) *20)/20
        
        
        
    # Sell side
    
    sq1 = round((stock_data['Close'][-1] - (rangea * 0.118)) * 20)/20 
    sq2 = round((stock_data['Close'][-1] - (rangea * 0.236)) *20)/20
    sq3 = round((stock_data['Close'][-1] - (rangea * 0.382)) *20)/20  
    sq4 = round((stock_data['Close'][-1] - (rangea * 0.618)) *20)/20  
    sq5 = round((stock_data['Close'][-1] - (rangea * 1)) *20)/20





    # Quartile calculation for yestday

    # Buy side
#    ybq1 = round((stock_data['Close'][-2] + (rangeb * 0.118)) * 20)/20 
#    ybq2 = round((stock_data['Close'][-2] + (rangeb * 0.236)) *20)/20
    ybq3 = round((stock_data['Close'][-2] + (rangeb * 0.382)) *20)/20
    ybq4 = round((stock_data['Close'][-2] + (rangeb * 0.618)) *20)/20  
    ybq5 = round((stock_data['Close'][-2] + (rangeb * 1)) *20)/20
        
        
        
    # Sell side
    
#    ysq1 = round((stock_data['Close'][-2] - (rangeb * 0.118)) * 20)/20 
#    ysq2 = round((stock_data['Close'][-2] - (rangeb * 0.236)) *20)/20
    ysq3 = round((stock_data['Close'][-2] - (rangeb * 0.382)) *20)/20  
    ysq4 = round((stock_data['Close'][-2] - (rangeb * 0.618)) *20)/20  
    ysq5 = round((stock_data['Close'][-2] - (rangeb * 1)) *20)/20


    # creating yesterday quartile price list for yesterday yesterday
    quartile_list = []


    #Appending quartile values to list  ** note list is created inside list 
    #first is buyquartile list and seconde is sell quartile list
    quartile_list.append([ybq3,ybq4,ybq5])
    quartile_list.append([ysq3,ysq4,ysq5])



    # creating booleans value

    boolean = []


    # buy side for quartile determination
    bbq3 = valuehigh1 < ybq3   # if this is true we will take ybq3 as level for high to give signal 
    bbq4 = valuehigh1 < ybq4 and valuehigh1 >= ybq3   #if this is true we will take ybq4 as level for high to give signal 
    bbq5 = valuehigh1 >= ybq4   #if this is true we will take ybq5 as level for high to give signal 

    #sell side for quartile determination
    ssq3 = valuelow1 > ybq3 # if this is true we will take ysq3 as level for high to give signal 
    ssq4 = valuelow1 > ybq4 and valuelow1 <= ybq3 # if this is true we will take ysq4 as level for high to give signal 
    ssq5 = valuelow1 <= ybq4 # if this is true we will take ysq5 as level for high to give signal 

    # appending quartile check bolean value in a common list    
    boolean.append([bbq3,bbq4,bbq5])
    boolean.append([ssq3,ssq4,ssq5])


    
    # buy sell level list
    levels = []
    indexxx = 0

    for bools in boolean[0]:        
        if bools == True:
            levels.append(quartile_list[0][indexxx])
            indexxx += 1
        else:
            indexxx += 1
           
    indexxx = 0    

    for bools in boolean[1]:
        indexxx = 0
        if bools == True:
            levels.append(quartile_list[1][indexxx])
            indexxx += 1            
        else:
            indexxx += 1
            




    if stock_high2 > levels[0] and stock_low2 < levels[1]:
        yesterdays_signal = "HL Breached"
    elif stock_high2 >= levels[0] :
        yesterdays_signal = "Light green"
    elif stock_low2 <= levels[1] :
        yesterdays_signal = "Light red"
    else :
        yesterdays_signal = "Between quartile"
        







    # try appending calculations of particular stocks in greek excel
    
    ilocation = excel_list.index(i)
    loc_value = excel_index[ilocation]
    
    
    #append a in row g
    exec("sht.range('g{}').value = a".format(loc_value)) 

    #append b in row h
    exec("sht.range('h{}').value = b".format(loc_value)) 

    #append a1 in row i
    exec("sht.range('i{}').value = a1".format(loc_value)) 

    #append b1 in row j
    exec("sht.range('j{}').value = b1".format(loc_value)) 

    #append bq1 in row k
    exec("sht.range('k{}').value = bq1".format(loc_value)) 

    #append bq2 in row l
    exec("sht.range('l{}').value = bq2".format(loc_value)) 

    #append bq3 in row m
    exec("sht.range('m{}').value = bq3".format(loc_value)) 

    #append bq4 in row n
    exec("sht.range('n{}').value = bq4".format(loc_value)) 

    #append bq5 in row o
    exec("sht.range('o{}').value = bq5".format(loc_value)) 

    #append sq1 in row p
    exec("sht.range('p{}').value = sq1".format(loc_value)) 

    #append sq2 in row q
    exec("sht.range('q{}').value = sq2".format(loc_value)) 

    #append sq3 in row r
    exec("sht.range('r{}').value = sq3".format(loc_value)) 

    #append sq4 in row s
    exec("sht.range('s{}').value = sq4".format(loc_value)) 

    #append sq5 in row t
    exec("sht.range('t{}').value = sq5".format(loc_value)) 

    #append pattern in row q
    exec("sht.range('C{}').value = pattern".format(loc_value))





    # printing data required to color signals
    
    #append yesterdays 4 values high in row v
    exec("sht.range('v{}').value = valuehigh".format(loc_value))

    #append yesterdays 4 values low in row w
    exec("sht.range('w{}').value = valuelow".format(loc_value))








    #append yesterdays yesterdays 4 values high in row ab
    exec("sht.range('ab{}').value = valuehigh1".format(loc_value))

    #append yesterdays yesterdays 4 values low in row ac
    exec("sht.range('ac{}').value = valuelow1".format(loc_value))

    #append yesterdays stock high in row ad
    exec("sht.range('ad{}').value = stock_high1".format(loc_value))

    #append yesterdays stock low in row ae
    exec("sht.range('ae{}').value = stock_low1".format(loc_value))
    
    
    #append yesterdays stock high in row af
    exec("sht.range('af{}').value = stock_high2".format(loc_value))

    #append yesterdays stock low in row ag
    exec("sht.range('ag{}').value = stock_low2".format(loc_value))    

    #append ybq3 in row ah
    exec("sht.range('ah{}').value = ybq3".format(loc_value)) 

    #append ybq4 in row ai
    exec("sht.range('ai{}').value = ybq4".format(loc_value)) 

    #append ybq5 in row aj
    exec("sht.range('aj{}').value = ybq5".format(loc_value)) 

    #append ysq3 in row ak
    exec("sht.range('ak{}').value = ysq3".format(loc_value)) 

    #append ysq4 in row al
    exec("sht.range('al{}').value = ysq4".format(loc_value)) 

    #append ysq5 in row am
    exec("sht.range('am{}').value = ysq5".format(loc_value)) 




    #append yesterdays signal  in row aa
    exec("sht.range('aa{}').value = yesterdays_signal".format(loc_value)) 

    
    
#append updated date in row q
sht.range('a3').value = updated


print(time.time() - start_count_time)





