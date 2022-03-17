import unittest
import time
import HtmlTestRunner
from selenium import webdriver
#Import Projects link
import sys
sys.path.append('C:/Users/amirulcse/PycharmProjects/RobotFrameWork')
from SeleniumPython.pageObjects.LoginPage import LoginPaggeLocators

class LoginTest(unittest.TestCase):
    baseURL = "https://admin-demo.nopcommerce.com/login"
    username = "admin@yourstore.com"
    password = "admin"
    drver = webdriver.Chrome(executable_path="C:/Users/amirulcse/PycharmProjects/RobotFrameWork/SeleniumPython/Drivers/chromedriver.exe")

    @classmethod
    def setUpClass(cls):
        cls.drver.get(cls.baseURL)
        cls.drver.maximize_window()

    def test_login(self):
        lp = LoginPaggeLocators(self.drver)
        lp.setUserName(self.username)
        lp.setPassword(self.password)
        lp.textRemember()
        lp.clickLogin()

        time.sleep(1)
        self.assertEqual("Dashboard / nopCommerce administration", self.drver.title, "webpage title is not matching!!")

        time.sleep(1)
        lp.clickLogout()
        self.assertEqual("Your store. Login", self.drver.title, "Web page title is not found!!")

    @classmethod
    def tearDownClass(cls):
        cls.drver.close()

if __name__ == '__main__':
    unittest.main(testRunner=HtmlTestRunner.HTMLTestRunner(output='..\\SeleniumPython\\Reports'))
    #unittest.main(testRunner=HtmlTestRunner.HTMLTestRunner(output="C:/Users/amirulcse/PycharmProjects/RobotFrameWork/SeleniumPython/Reports"))
