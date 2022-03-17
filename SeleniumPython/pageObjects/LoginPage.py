import time
from selenium.webdriver.common.by import By

class LoginPaggeLocators():
    #Locators of all elements
    textbox_username_id = "Email"
    textbox_password_id = "Password"
    text_remember_id = "RememberMe"
    button_login_xpath = "//button[normalize-space()='Log in']"
    link_logout_xpath = "//a[normalize-space()='Logout']"

    # Constructor declaration
    def __init__(self,driver):
        self.driver = driver

    def setUserName(self,username):
        time.sleep(1)
        self.driver.find_element(By.ID, self.textbox_username_id).clear() # clear existing text field

        time.sleep(1)
        self.driver.find_element(By.ID, self.textbox_username_id).send_keys(username)

    def setPassword(self, password):
        time.sleep(1)
        self.driver.find_element(By.ID, self.textbox_password_id).clear() # clear existing text field

        time.sleep(1)
        self.driver.find_element(By.ID, self.textbox_password_id).send_keys(password)

    def textRemember(self):
        time.sleep(1)
        self.driver.find_element(By.NAME, self.text_remember_id).click()

    def clickLogin(self):
        time.sleep(1)
        self.driver.find_element(By.XPATH,self.button_login_xpath).click()

    def clickLogout(self):
        self.driver.find_element(By.XPATH, self.link_logout_xpath).click()
        time.sleep(1)