# assertIsNone, assertIsNotNone
import unittest
from selenium import webdriver

class MyTestCase(unittest.TestCase):
    def test_Assertion(self):
        driver = webdriver.Chrome(executable_path="E:/SeleniumPractice/chromedriver.exe")
        #driver = "hello"
        #driver = None
        #self.assertIsNone(driver)
        self.assertIsNotNone(driver)


if __name__ == '__main__':
    unittest.main()
