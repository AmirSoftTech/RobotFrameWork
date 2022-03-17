# assertEqual, assertNotEqual
import unittest
from selenium import webdriver

class MyTestCase(unittest.TestCase):
    def testName(self):
        driver = webdriver.Chrome(executable_path="E:/SeleniumPractice/chromedriver.exe")
        driver.get("https://www.google.com/")
        titleWebPage = driver.title
        self.assertEqual("Google",titleWebPage, "webpage title is not the same")  # add assertion here
        #self.assertNotEqual("Google", titleWebPage, "webpage title is the same")
if __name__ == '__main__':
     unittest.main()
