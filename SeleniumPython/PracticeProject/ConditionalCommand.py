import time
from selenium import webdriver
from selenium.webdriver.common.by import By

driver = webdriver.Chrome(executable_path="E:/SeleniumPractice/chromedriver.exe")
driver.maximize_window()

driver.get("http://demowebshop.tricentis.com/register")
print(driver.title)
assert "Demo Web Shop. Register" in driver.title

time.sleep(1)
radio_m = driver.find_element(By.CSS_SELECTOR, "input[value='M']")
print(radio_m.is_displayed()) # whether it is true or false
print(radio_m.is_enabled()) # whether it is true or false
radio_m.click()
print(radio_m.is_selected()) # Returns true

print("-----------------------------------------")

time.sleep(1)
radio_f = driver.find_element(By.CSS_SELECTOR, "input[value='F']")
print(radio_f.is_selected()) # Returns false

user_ele = driver.find_element(By.ID, "FirstName")
print(user_ele.is_displayed())
print(user_ele.is_enabled())

driver.close()