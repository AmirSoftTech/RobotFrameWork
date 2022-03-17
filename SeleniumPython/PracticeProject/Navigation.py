import time
from selenium import webdriver

driver = webdriver.Chrome()
driver.maximize_window()

driver.get("https://opensource-demo.orangehrmlive.com/")
print(driver.title)

time.sleep(2)
driver.get("https://admin-demo.nopcommerce.com/login")
print(driver.title)

time.sleep(2)
driver.back()
print(driver.title)

time.sleep(2)
driver.forward()
print(driver.title)

driver.quit()