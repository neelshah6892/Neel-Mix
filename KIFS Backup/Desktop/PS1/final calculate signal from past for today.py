# -*- coding: utf-8 -*-
"""
Created on Tue Dec 31 11:03:48 2019

@author: Administrator
"""

import datetime 
import time
import yfinance as yf

import pandas as pd


excel_list = ["ASHOKLEY"]
i = "ASHOKLEY"

# for appending signals 
signalslistt = []
signaldatelist = []





for i in excel_list:
    
    
    todays_date = datetime.datetime.now()
    end = todays_date - datetime.timedelta(days=1)
    start = todays_date - datetime.timedelta(days=15) 
    
    exec("""stock_data = yf.download('{}.NS', start=start, end=end)""".format(i,i))


    # Gettingstock data
    stock_data = round(stock_data[['Open','High','Low','Close']] , 2)
    

    # calculcation for rw signal

    # get before trading day data of before 7 days
    dates_list = dates_list = list(stock_data.index.date)    
    previous_7date = datetime.datetime.now().date() - datetime.timedelta(days=7) 
    date_index_7 = dates_list.index(previous_7date) # note intraday data will start from this date


    #creating a dataframe
    previous_days_data = pd.DataFrame(columns = ['Open','High','Low','Close'])

    #appending last 3 days data
    previous_days_data = previous_days_data.append(stock_data.iloc[(date_index_7 - 3)])
    previous_days_data = previous_days_data.append(stock_data.iloc[(date_index_7 - 2)])
    previous_days_data = previous_days_data.append(stock_data.iloc[(date_index_7 - 1)])
    
    # Range
#    rangea = previous_days_data['High'][-1] - previous_days_data['Low'][-1]   # yesterdays high - low
    rangeb = previous_days_data['High'][-2] - previous_days_data['Low'][-2]   # (yesterday -1) high - low
    rangec = previous_days_data['High'][-3] - stock_data['Low'][-3]

    # Value
#    value1 = rangea * 0.382 # yesterdays range * 0.382
    value2 = rangeb * 0.382 # (yesterdays - 1)range * 0.382
    value3 = rangec * 0.382


    # levels jgd = a jwd = b rounded to  0.05  ,4 values
#    a = round((previous_days_data['High'][-1] - value1 ) * 20)/20  
#    b = round((previous_days_data['Low'][-1] + value1 ) * 20)/20

    a1 = round((previous_days_data['High'][-2] - value2) * 20)/20
    b1 = round((previous_days_data['Low'][-2] + value2) * 20)/20

    a2 = round((stock_data['High'][-3] - value3) * 20)/20
    b2 = round((stock_data['Low'][-3] + value3) * 20)/20


    # high value of 4 values for today and yesterday
#    valuehigh = max(a,b,a1,b1)
#    valuelow = min(a,b,a1,b1)

    valuehigh1 = max(a1,b1,a2,b2)
    valuelow1 = min(a1,b1,a2,b2)

    #second_value
    if valuehigh1 != b1 or valuelow1 != b1:
        second_value = b1
    else:
        second_value = a1
    



    # finding stocks yesterdays high low price
    stock_high1  = previous_days_data['High'][-1]
    stock_low1 = previous_days_data['Low'][-1]

#    stock_high2 = previous_days_data['High'][-2]   # taken for dark green level
#    stock_low2 = previous_days_data['Low'][-2]     # taken for dark red level


    # Buy side quartile for yesterday
    ybq3 = round((previous_days_data['Close'][-2] + (rangeb * 0.382)) *20)/20
    ybq4 = round((previous_days_data['Close'][-2] + (rangeb * 0.618)) *20)/20  
    ybq5 = round((previous_days_data['Close'][-2] + (rangeb * 1)) *20)/20
        
        
        
    # Sell side quartile for yesterday    
    ysq3 = round((previous_days_data['Close'][-2] - (rangeb * 0.382)) *20)/20  
    ysq4 = round((previous_days_data['Close'][-2] - (rangeb * 0.618)) *20)/20  
    ysq5 = round((previous_days_data['Close'][-2] - (rangeb * 1)) *20)/20



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
    yesterdays_levels = []    # minimum range
    indexxx = 0

    for bools in boolean[0]:        
        if bools == True:
            yesterdays_levels.append(quartile_list[0][indexxx])
            indexxx += 1
        else:
            indexxx += 1
           
    indexxx = 0    

    for bools in boolean[1]:
        indexxx = 0
        if bools == True:
            yesterdays_levels.append(quartile_list[1][indexxx])
            indexxx += 1            
        else:
            indexxx += 1




            
    if stock_high1 > yesterdays_levels[0] and stock_low1 < yesterdays_levels[1]:
        yesterdays_signal = "HL Breached"
    elif stock_high1 >= yesterdays_levels[0] :
        yesterdays_signal = "Light green"
    elif stock_low1 <= yesterdays_levels[1] :
        yesterdays_signal = "Light red"
    else :
        yesterdays_signal = "Between quartile"

#-----------------------------------------------------------------------------
#------------------------------------------------------------------------------        
        


    # getting levels for yesterdays high low breach

     
    if yesterdays_signal == "HL Breached":
        yesterdays_high_breach_level = yesterdays_levels[0]
        yesterdays_low_breach_level = yesterdays_levels[1]
    else:
        pass



    if yesterdays_signal == "HL Breached" :
        if yesterdays_low_breach_level < stock_close1 < yesterdays_high_breach_level:
            yesterdays_signal = "Between quartile"
        elif yesterdays_low_breach_level > stock_close1:
            yesterdays_signal = "Light red"
        elif yesterdays_high_breach_level < stock_close1:
            yesterdays_signal = "Light green"



#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------


    
    
    # calculate signals on 1min data from yahoo finance
    intraday_dates = list(dates_list[date_index_7:])


    #fetch data of last 3 days


    previous = date_index_7
    
    
    #########################3#######   create a for/while loop here to test on intraday data
    
    #creating a dataframe
    previous_days_data1 = pd.DataFrame(columns = ['Open','High','Low','Close'])
    
    
    
    ################# create variables for (previous - x) to change data on every loop
    #appending last 3 days data
    previous_days_data1 = previous_days_data1.append(stock_data.iloc[(previous - 2)])
    previous_days_data1 = previous_days_data1.append(stock_data.iloc[(previous - 1)])


    # Range
    rangea = previous_days_data1['High'][-1] - previous_days_data1['Low'][-1]
    rangeb = previous_days_data1['High'][-2] - previous_days_data1['Low'][-2]

    # Value
    value1 = rangea * 0.382
    value2 = rangeb * 0.382

    # levels jgd = a jwd = b rounded to  0.05
    a = round((previous_days_data1['High'][-1] - value1 ) * 20)/20  
    b = round((previous_days_data1['Low'][-1] + value1 ) * 20)/20

    a1 = round((previous_days_data1['High'][-2] - value2) * 20)/20
    b1 = round((previous_days_data1['Low'][-2] + value2) * 20)/20


    # high value of 4 values for today and yesterday
    valuehigh = max(a,b,a1,b1)
    valuelow = min(a,b,a1,b1)

    # finding stocks yesterdays high low price
    stock_high1  = previous_days_data1['High'][-1]
    stock_low1 = previous_days_data1['Low'][-1]
    stock_close1 = previous_days_data1['Close'][-1]


    # Buy side
    bq3 = round((previous_days_data1['Close'][-1] + (rangea * 0.382)) *20)/20
    bq4 = round((previous_days_data1['Close'][-1] + (rangea * 0.618)) *20)/20  
    bq5 = round((previous_days_data1['Close'][-1] + (rangea * 1)) *20)/20
        
                
    # Sell side
    sq3 = round((previous_days_data1['Close'][-1] - (rangea * 0.382)) *20)/20  
    sq4 = round((previous_days_data1['Close'][-1] - (rangea * 0.618)) *20)/20  
    sq5 = round((previous_days_data1['Close'][-1] - (rangea * 1)) *20)/20



    # creating yesterday quartile price list for yesterday yesterday
    quartile_list = []

    #Appending quartile values to list  ** note list is created inside list 
    #first is buyquartile list and seconde is sell quartile list
    quartile_list.append([bq3,bq4,bq5,valuehigh])
    quartile_list.append([sq3,sq4,sq5,valuelow])


    # creating booleans value

    boolean = []


    # buy side for quartile determination
    bbq3 = valuehigh < bq3   # if this is true we will take ybq3 as level for high to give signal 
    bbq4 = valuehigh < bq4 and valuehigh1 >= bq3   #if this is true we will take ybq4 as level for high to give signal 
    bbq5 = valuehigh < bq5 and valuehigh >= bq4   #if this is true we will take ybq5 as level for high to give signal 
    bbq6 = valuehigh >= bq5

    #sell side for quartile determination
    ssq3 = valuelow > sq3   # if this is true we will take ysq3 as level for high to give signal 
    ssq4 = valuelow > sq4 and valuelow <= sq3  # if this is true we will take ysq4 as level for high to give signal 
    ssq5 = valuelow > sq5 and valuelow <= sq4  # if this is true we will take ysq5 as level for high to give signal 
    ssq6 = valuelow <= sq5

    # appending quartile check bolean value in a common list    
    boolean.append([bbq3,bbq4,bbq5,bbq6])
    boolean.append([ssq3,ssq4,ssq5,ssq6])


    # buy sell level list
    yesterdays_levels = []    # minimum range
    indexxx = 0

    for bools in boolean[0]:        
        if bools == True:
            yesterdays_levels.append(quartile_list[0][indexxx])
            indexxx += 1
        else:
            indexxx += 1
           
    indexxx = 0    

    for bools in boolean[1]:
        indexxx = 0
        if bools == True:
            yesterdays_levels.append(quartile_list[1][indexxx])
            indexxx += 1            
        else:
            indexxx += 1
    
    yesterdays_high_value = yesterdays_levels[0]
    yesterdays_low_value = yesterdays_levels[1]


        
            
    #received high value , low value , yesterdays high , yesterday low for calculation on intraday data
            
    #high value = yesterdays_high_value
    #low  value  yesterdays_low_value
    #yesterdays high = stock_high1
    #yesterdays low = stock_low1
    #yesterdays close = stock_close1
    #second value = second_value
    #yesterdays signal = yesterdays_signal  # dont forget to append yesterdays signal after it changes
    # yesterdays  high value =  yesterdays_high_breach_level
    # yesterdays low value =    yesterdays_low_breach_level
    

    
    

    ####################### cut paste this variables outside loop or same data will occur
    intraday_start_index = 0
    intraday_end_index = 1
    intraday_loop_end = 1

    exec("""intraday_stock_data = yf.download('{}.NS', start = intraday_dates[0] , end = intraday_dates[1] , interval="1m" )""".format(i,i))
    # append intrday_start_index and intraday_end_index by one to gett next day intraday data
   

    # for loop to get one min high low every interval and run it into color signal code
    for i in range(len(intraday_stock_data)):
        intraday_high =  intraday_stock_data.iloc[i]['High']
        intraday_low = intraday_stock_data.iloc[i]['Low']




#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
        

        # creating signal from HLBreached signal;       
        if yesterdays_signal == "HL Breached" :
            if yesterdays_low_breach_level > stock_close1 > yesterdays_high_breach_level:
                if intraday_high > yesterdays_levels[0]:
                    yesterdays_signal = "Light green"
                    elif intraday_low < yesterdays_low_value:
                        yesterdays_signal = "Light red"
                        else:
                            pass
                        else:
                            pass
            





        # creating signal from between quartile signal;        
        if yesterdays_signal == "Between quartile" :
            if intraday_high > yesterdays_high_value:
                yesterdays_signal = "Light green"
            elif intraday_low < yesterdays_low_value:
                yesterdays_signal = "Light red"
            else:
                pass
        else:
            pass
            
        
            
        
        
        
"HL Breached"
"Light green"
"Light red"

        
        
    
    










