import time
from selenium import webdriver
from selenium.webdriver.common.by import By

driver = webdriver.Chrome()
driver.get("https://fs2.formsite.com/meherpavan/form2/index.html?")
driver.maximize_window()

time.sleep(1)
driver.find_element(By.ID, "RESULT_FileUpload-10").send_keys("E:/SeleniumPractice/Amirul.jpg")
time.sleep(3)

driver.close()