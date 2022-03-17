import unittest
import time
from selenium import webdriver
import HtmlTestRunner
from selenium.webdriver.common.by import By

class organgeHRMTest(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        cls.driver = webdriver.Chrome(executable_path="E:/SeleniumPractice/chromedriver.exe")
        cls.driver.maximize_window()

    def test_homePageTitle(self):
        self.driver.get("https://opensource-demo.orangehrmlive.com/")
        self.assertEqual("OrangeHRM", self.driver.title, "Web page ttile is not matching!!")

    def test_login(self):
        self.driver.get("https://opensource-demo.orangehrmlive.com/")
        self.driver.find_element(By.NAME, "txtUsername").send_keys("Admin")
        self.driver.find_element(By.NAME, "txtPassword").send_keys("admin123")

        time.sleep(1)
        self.driver.find_element(By.NAME, "Submit").click()
        self.assertEqual("OrangeHRM", self.driver.title, "Web page ttile is not matching!!")

    def test_LoginPage(self):
        self.driver.get("https://admin-demo.nopcommerce.com/login")

        time.sleep(1)
        self.driver.find_element(By.NAME, "Email").clear() # clear the existing text

        time.sleep(1)
        self.driver.find_element(By.NAME, "Email").send_keys("admin@yourstore.com")

        time.sleep(1)
        self.driver.find_element(By.NAME, "Password").clear() # clear the existing text

        time.sleep(1)
        self.driver.find_element(By.NAME, "Password").send_keys("admin")

        time.sleep(1)
        self.driver.find_element(By.NAME, "RememberMe").click()

        time.sleep(1)
        self.driver.find_element(By.XPATH, "//button[normalize-space()='Log in']").click()

        time.sleep(1)
        self.driver.find_element(By.XPATH, "//a[normalize-space()='Logout']").click()


    @classmethod
    def tearDownClass(cls):
        cls.driver.quit()
        print("Test Completed...")

# To generate reports run the command from terminal : python Html_Report.py
if __name__ == '__main__':
    unittest.main(testRunner=HtmlTestRunner.HTMLTestRunner(output="..\\Reports"))

#if __name__ == '__main__':
    #unittest.main(testRunner=HtmlTestRunner.HTMLTestRunner(output="C:/Users/amirulcse/PycharmProjects/RobotFrameWork/SeleniumPython/Reports"))

