import XLUtils
import time
from selenium.webdriver.common.by import By
from selenium import webdriver

driver = webdriver.Chrome(executable_path="E:/SeleniumPractice/chromedriver.exe")
driver.get("https://demo.guru99.com/test/newtours/")
driver.maximize_window()

path = "E:/SeleniumPractice/Login.xlsx"
rows = XLUtils.getRowCount(path, 'Sheet1')
for r in range(2, rows+1):
    username = XLUtils.readData(path, "Sheet1", r, 1)
    password = XLUtils.readData(path, "Sheet1", r, 2)

    time.sleep(1)
    driver.find_element(By.NAME, "userName").send_keys(username)

    time.sleep(1)
    driver.find_element(By.NAME,"password").send_keys(password)

    time.sleep(1)
    a = driver.find_element(By.XPATH,"//tbody/tr[4]/td[2]/div[1]/input[1]")
    a.click()

    if driver.title=="Login: Mercury Tours":
        print("Test is passed")
        XLUtils.writeData(path, "Sheet1", r,3 , "test passed")
    else:
        print("Test is failed")
        XLUtils.writeData(path, "Sheet1", r, 3, "test failed")

    b = driver.find_element(By.LINK_TEXT, "Home")
    b.click()

driver.close()
