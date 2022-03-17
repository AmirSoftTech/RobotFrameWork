import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

driver = webdriver.Chrome(executable_path="E:/SeleniumPractice/chromedriver.exe")
driver.maximize_window()
driver.implicitly_wait(5)

#Testing Url
driver.get("https://www.expedia.de/en/Flights")

#Departure place
driver.find_element(By.XPATH, "//button[@aria-label='Leaving from']").click()
driver.find_element(By.ID, "location-field-leg1-origin").send_keys("SFO")
time.sleep(2)
driver.find_element(By.ID, "location-field-leg1-origin").send_keys(Keys.ENTER)

#Arrival place
time.sleep(2)
driver.find_element(By.XPATH, "//button[@aria-label='Going to']").click()
driver.find_element(By.ID, "location-field-leg1-destination").send_keys("NYC")
time.sleep(2)
driver.find_element(By.ID, "location-field-leg1-destination").send_keys(Keys.ENTER)

#Departure date
time.sleep(1)
driver.find_element(By.ID, "d1-btn").send_keys("2022-03-31")
time.sleep(1)

#Returning date
time.sleep(1)
driver.find_element(By.ID, "d2-btn").send_keys("2022-04-29")
time.sleep(1)

#Search button
time.sleep(1)
driver.find_element(By.XPATH, "//button[normalize-space()='Search']").click()
time.sleep(5)

wait = WebDriverWait(driver, 10)
element = wait.until(EC.element_to_be_clickable((By.ID, 'stops-0')))
element.click()

time.sleep(5)
driver.close()