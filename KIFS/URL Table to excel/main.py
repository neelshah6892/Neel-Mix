import requests
from bs4 import BeautifulSoup

page = requests.get("https://www.bloombergquint.com/markets/option-chain/open-interest-breakup")
soup = BeautifulSoup(page.text, 'html.parser')
a = soup.findAll(class_='tab-block current-fno-oi-breakup')
#print(soup)
with open("Output.txt", "w") as text_file:
    text_file.write(str(a))
print(a)