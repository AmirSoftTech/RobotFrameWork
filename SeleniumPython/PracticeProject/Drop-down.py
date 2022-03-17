import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.select import Select

driver = webdriver.Chrome()

driver.get("https://fs2.formsite.com/meherpavan/form2/index.html?")
driver.maximize_window()

time.sleep(2)
drop = Select(driver.find_element(By.ID,"RESULT_RadioButton-9"))
print(len(drop.options))

time.sleep(2)
drop.select_by_visible_text("Afternoon")

time.sleep(1)
drop.select_by_index(1)

time.sleep(1)
drop.select_by_value("Radio-2")

time.sleep(3)
driver.close()