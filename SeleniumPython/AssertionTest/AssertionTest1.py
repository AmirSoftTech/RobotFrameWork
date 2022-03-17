# assertTrue, assertFalse
import unittest
from selenium import webdriver

class MyTestCase(unittest.TestCase):

    def test_Name(self):
        path = "E:/SeleniumPractice/chromedriver.exe"
        driver = webdriver.Chrome(executable_path=path)
        driver.get("https://www.google.com/")
        titlePage  = driver.title
        self.assertTrue(titlePage == "Google")
        #self.assertFalse(titlePage == "Google12")
        driver.close()

if __name__ == '__main__':
     unittest.main()
