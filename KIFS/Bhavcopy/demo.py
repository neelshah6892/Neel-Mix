from datetime import timedelta, date
from selenium.webdriver import Firefox
from selenium.webdriver.firefox.options import Options
from selenium.webdriver.support.select import Select
import os
import time
from zipfile import ZipFile
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

def daterange(date1, date2):
    for n in range(int((date2 - date1).days)+1):
        yield date1 + timedelta(n)


start_dt = date(2018, 4, 1)
end_dt = date(2020, 4, 8)
for dt in daterange(start_dt, end_dt):
    try:
        print(dt)
        profile = webdriver.FirefoxProfile()
        profile.set_preference('browser.privatebrowsing.autostart', True)
        profile.set_preference('browser.download.folderList', 2) # custom location
        profile.set_preference('browser.download.manager.showWhenStarting', False)
        profile.set_preference('browser.download.dir', 'C:\\Users\\rocki\\Desktop\\Bhavcopy\\Downloads')
        profile.set_preference('browser.helperApps.neverAsk.saveToDisk', 'application/zip')
        browser = Firefox(profile)
        browser.get(
              'https://www1.nseindia.com/products/content/derivatives/equities/archieve_fo.htm')
        s1 = Select(browser.find_element_by_id('h_filetype'))
        s1.select_by_visible_text('Bhavcopy')
        s2 = browser.find_element_by_id('date')
        datepicker = browser.find_element_by_id("date")
        datepicker.click()

        selectMonth = browser.find_element_by_xpath(
              '//select[@class="ui-datepicker-month"]')
        for option in selectMonth.find_elements_by_tag_name('option'):
              if option.text == dt.month:
                  option.click()
                  time.sleep(2)
                  break

        selectYear = browser.find_element_by_xpath(
            '//select[@class="ui-datepicker-year"]')
        for option in selectYear.find_elements_by_tag_name('option'):
            if option.text == dt.year:
                option.click()
                time.sleep(2)
                break

        days = browser.find_elements_by_xpath('//a[@class="ui-state-default"]')
        days[dt.day].click()
        time.sleep(2)
        s3 = browser.find_element_by_class_name('getdata-button')
        s3.click()
        s4 = browser.find_element_by_class_name('t0 a')
        print(s4.get_attribute('href'))
        btn = s4.get_attribute('href')
        browser.get(btn)
        time.sleep(10)
        browser.close()
        browser.quit()
    except Exception as e:
        print(e)
        browser.close()
        browser.quit()
