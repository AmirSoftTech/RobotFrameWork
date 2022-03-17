import time
from selenium import webdriver
from selenium.webdriver.common.by import By

driver = webdriver.Chrome()

driver.get("https://fs2.formsite.com/meherpavan/form2/index.html?")
driver.maximize_window()

time.sleep(1)
status = driver.find_element(By.XPATH, "//label[normalize-space()='Male']").is_selected()
print(status)

time.sleep(2)
driver.find_element(By.XPATH, "//label[normalize-space()='Female']").click()
a = driver.find_element(By.XPATH, "//label[normalize-space()='Female']").is_selected()
print(a)

driver.find_element(By.XPATH, "//label[normalize-space()='Sunday']").click()
time.sleep(5)
driver.close()