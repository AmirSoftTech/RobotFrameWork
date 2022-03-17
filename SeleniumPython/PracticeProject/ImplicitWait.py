import time
from selenium import webdriver
from selenium.webdriver.common.by import By

driver = webdriver.Chrome(executable_path="E:/SeleniumPractice/chromedriver.exe")
driver.maximize_window()

driver.get("https://demo.guru99.com/test/newtours/")
driver.implicitly_wait(10)

assert "Welcome: Mercury Tours" in driver.title

driver.find_element(By.NAME, "userName").send_keys("mercury")
driver.find_element(By.NAME, "password").send_keys("mercury")
driver.find_element(By.XPATH, "//tbody/tr[4]/td[2]/div[1]/input[1]").click()

assert "Login: Mercury Tours" in driver.title
driver.implicitly_wait(10)
driver.close()
