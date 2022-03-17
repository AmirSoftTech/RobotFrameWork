import time
from selenium import webdriver
from selenium.webdriver.common.by import By

driver = webdriver.Chrome()
driver.maximize_window()
driver.get("https://demo.guru99.com/test/newtours/")

link = driver.find_element(By.XPATH, "//a[contains(text(),'REGISTER')]")

print(len(link))

driver.close()