from bs4 import BeautifulSoup
from selenium import webdriver
import pandas as pd
from tabulate import tabulate

url = "https://www.bloombergquint.com/markets/option-chain/open-interest-breakup"
browser = webdriver.Firefox()
browser.get(url)
html = browser.page_source
soup = BeautifulSoup(html, 'lxml')
a = soup.find('table')
#print(str(a))
pd.set_option('display.max_rows', None)
d = pd.read_html(str(a))
print(d)

#d.to_excel('mydata.xls')
data = pd.DataFrame(d)
data.to_excel('mydata.xls')
browser.close()
browser.quit()