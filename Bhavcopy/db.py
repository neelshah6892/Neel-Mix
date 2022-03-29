import requests
from datetime import timedelta, date
from urllib.request import urlopen
from zipfile import ZipFile
from io import BytesIO
from proxy_requests import ProxyRequests, ProxyRequestsBasicAuth
import time


"""url = "http://www.nseindia.com/content/historical/EQUITIES/" + \
    YeaR+"/"+MontH+"/cm"+DaY+MontH+YeaR+"bhav.csv.zip"
headers = {
    'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'}
response = requests.get(url, headers=headers)
print(url)"""


def daterange(date1, date2):
    for n in range(int((date2 - date1).days)+1):
        yield date1 + timedelta(n)


start_dt = date(2021, 1, 1)
end_dt = date(2021, 2, 9)
for dt in daterange(start_dt, end_dt):
    c = str(dt.year)
    d = str(dt.day)
    if dt.day==1:
        b="01"
        if dt.month == 1:
           a = "JAN"
        elif dt.month == 2:
            a = "FEB"
        elif dt.month == 3:
            a = "MAR"
        elif dt.month == 4:
            a = "APR"
        elif dt.month == 5:
            a = "MAY"
        elif dt.month == 6:
            a = "JUN"
        elif dt.month == 7:
            a = "JUL"
        elif dt.month == 8:
            a = "AUG"
        elif dt.month == 9:
            a = "SEP"
        elif dt.month == 10:
            a = "OCT"
        elif dt.month == 11:
            a = "NOV"
        elif dt.month == 12:
            a = "DEC"
    elif dt.day==2:
        b="02"
        if dt.month == 1:
           a = "JAN"
        elif dt.month == 2:
            a = "FEB"
        elif dt.month == 3:
            a = "MAR"
        elif dt.month == 4:
            a = "APR"
        elif dt.month == 5:
            a = "MAY"
        elif dt.month == 6:
            a = "JUN"
        elif dt.month == 7:
            a = "JUL"
        elif dt.month == 8:
            a = "AUG"
        elif dt.month == 9:
            a = "SEP"
        elif dt.month == 10:
            a = "OCT"
        elif dt.month == 11:
            a = "NOV"
        elif dt.month == 12:
            a = "DEC"
    elif dt.day==3:
        b="03"
        if dt.month == 1:
           a = "JAN"
        elif dt.month == 2:
            a = "FEB"
        elif dt.month == 3:
            a = "MAR"
        elif dt.month == 4:
            a = "APR"
        elif dt.month == 5:
            a = "MAY"
        elif dt.month == 6:
            a = "JUN"
        elif dt.month == 7:
            a = "JUL"
        elif dt.month == 8:
            a = "AUG"
        elif dt.month == 9:
            a = "SEP"
        elif dt.month == 10:
            a = "OCT"
        elif dt.month == 11:
            a = "NOV"
        elif dt.month == 12:
            a = "DEC"
    elif dt.day==4:
        b="04"
        if dt.month == 1:
           a = "JAN"
        elif dt.month == 2:
            a = "FEB"
        elif dt.month == 3:
            a = "MAR"
        elif dt.month == 4:
            a = "APR"
        elif dt.month == 5:
            a = "MAY"
        elif dt.month == 6:
            a = "JUN"
        elif dt.month == 7:
            a = "JUL"
        elif dt.month == 8:
            a = "AUG"
        elif dt.month == 9:
            a = "SEP"
        elif dt.month == 10:
            a = "OCT"
        elif dt.month == 11:
            a = "NOV"
        elif dt.month == 12:
            a = "DEC"
    elif dt.day==5:
        b="05"
        if dt.month == 1:
           a = "JAN"
        elif dt.month == 2:
            a = "FEB"
        elif dt.month == 3:
            a = "MAR"
        elif dt.month == 4:
            a = "APR"
        elif dt.month == 5:
            a = "MAY"
        elif dt.month == 6:
            a = "JUN"
        elif dt.month == 7:
            a = "JUL"
        elif dt.month == 8:
            a = "AUG"
        elif dt.month == 9:
            a = "SEP"
        elif dt.month == 10:
            a = "OCT"
        elif dt.month == 11:
            a = "NOV"
        elif dt.month == 12:
            a = "DEC"
    elif dt.day==6:
        b="06"
        if dt.month == 1:
           a = "JAN"
        elif dt.month == 2:
            a = "FEB"
        elif dt.month == 3:
            a = "MAR"
        elif dt.month == 4:
            a = "APR"
        elif dt.month == 5:
            a = "MAY"
        elif dt.month == 6:
            a = "JUN"
        elif dt.month == 7:
            a = "JUL"
        elif dt.month == 8:
            a = "AUG"
        elif dt.month == 9:
            a = "SEP"
        elif dt.month == 10:
            a = "OCT"
        elif dt.month == 11:
            a = "NOV"
        elif dt.month == 12:
            a = "DEC"
    elif dt.day==7:
        b="07"
        if dt.month == 1:
           a = "JAN"
        elif dt.month == 2:
            a = "FEB"
        elif dt.month == 3:
            a = "MAR"
        elif dt.month == 4:
            a = "APR"
        elif dt.month == 5:
            a = "MAY"
        elif dt.month == 6:
            a = "JUN"
        elif dt.month == 7:
            a = "JUL"
        elif dt.month == 8:
            a = "AUG"
        elif dt.month == 9:
            a = "SEP"
        elif dt.month == 10:
            a = "OCT"
        elif dt.month == 11:
            a = "NOV"
        elif dt.month == 12:
            a = "DEC"
    elif dt.day==8:
        b="08"
        if dt.month == 1:
           a = "JAN"
        elif dt.month == 2:
            a = "FEB"
        elif dt.month == 3:
            a = "MAR"
        elif dt.month == 4:
            a = "APR"
        elif dt.month == 5:
            a = "MAY"
        elif dt.month == 6:
            a = "JUN"
        elif dt.month == 7:
            a = "JUL"
        elif dt.month == 8:
            a = "AUG"
        elif dt.month == 9:
            a = "SEP"
        elif dt.month == 10:
            a = "OCT"
        elif dt.month == 11:
            a = "NOV"
        elif dt.month == 12:
            a = "DEC"
    elif dt.day==9:
        b="09"
        if dt.month == 1:
           a = "JAN"
        elif dt.month == 2:
            a = "FEB"
        elif dt.month == 3:
            a = "MAR"
        elif dt.month == 4:
            a = "APR"
        elif dt.month == 5:
            a = "MAY"
        elif dt.month == 6:
            a = "JUN"
        elif dt.month == 7:
            a = "JUL"
        elif dt.month == 8:
            a = "AUG"
        elif dt.month == 9:
            a = "SEP"
        elif dt.month == 10:
            a = "OCT"
        elif dt.month == 11:
            a = "NOV"
        elif dt.month == 12:
            a = "DEC"
    elif dt.day==10:
        b="10"
        if dt.month == 1:
           a = "JAN"
        elif dt.month == 2:
            a = "FEB"
        elif dt.month == 3:
            a = "MAR"
        elif dt.month == 4:
            a = "APR"
        elif dt.month == 5:
            a = "MAY"
        elif dt.month == 6:
            a = "JUN"
        elif dt.month == 7:
            a = "JUL"
        elif dt.month == 8:
            a = "AUG"
        elif dt.month == 9:
            a = "SEP"
        elif dt.month == 10:
            a = "OCT"
        elif dt.month == 11:
            a = "NOV"
        elif dt.month == 12:
            a = "DEC"
    else:
        b=dt.day
        if dt.month == 1:
           a = "JAN"
        elif dt.month == 2:
            a = "FEB"
        elif dt.month == 3:
            a = "MAR"
        elif dt.month == 4:
            a = "APR"
        elif dt.month == 5:
            a = "MAY"
        elif dt.month == 6:
            a = "JUN"
        elif dt.month == 7:
            a = "JUL"
        elif dt.month == 8:
            a = "AUG"
        elif dt.month == 9:
            a = "SEP"
        elif dt.month == 10:
            a = "OCT"
        elif dt.month == 11:
            a = "NOV"
        elif dt.month == 12:
            a = "DEC"

    url = "https://www1.nseindia.com/content/historical/DERIVATIVES/"+c+"/"+a+"/fo"+str(b)+""+a+""+c+"bhav.csv.zip"
    headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36'}
    response = requests.get(url, headers=headers)
    print(url)
    if response.status_code == 200:
        """tempzip = open("/tmp/tempfile.zip", "wb")
        tempzip.write(zipresp.read())
        tempzip.close()
        zf = ZipFile("/tmp/tempfile.zip")
        zf.extractall(path='C:\\Users\\rocki\\Desktop\\Bhavcopy\\Downloads')
        zf.close()"""
        with urlopen(url) as zipresp:
            with ZipFile(BytesIO(zipresp.read())) as zfile:
                zfile.extractall(
                    'C:\\Users\\rocki\\Desktop\\Bhavcopy\\Downloads')
        print('Success')
        #time.sleep(10)
    else:
        print('Not Found')
        #time.sleep(10)
