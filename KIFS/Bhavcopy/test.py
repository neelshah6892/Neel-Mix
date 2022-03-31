from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

options = webdriver.ChromeOptions() 
options.add_argument("start-maximized")
options.add_experimental_option("excludeSwitches", ["enable-automation"])
options.add_experimental_option('useAutomationExtension', False)
driver = webdriver.Chrome(
    options=options, executable_path=r'C:\\Users\\rocki\\Desktop\\Bhavcopy')
driver.get(
    'https://www1.nseindia.com/products/content/derivatives/equities/archieve_fo.htm')
Select(WebDriverWait(driver, 20).until(EC.element_to_be_clickable((By.CSS_SELECTOR,"select#h_filetype")))).select_by_visible_text("Bhavcopy")
Select(WebDriverWait(driver, 20).until(EC.element_to_be_clickable((By.CSS_SELECTOR,"select#yearField")))).select_by_visible_text("2018-4-2")
WebDriverWait(driver, 20).until(EC.element_to_be_clickable((By.CSS_SELECTOR, "input.getdata-button#get[type='image'][src^='/common/images/btn-get-data.gif']"))).click()
