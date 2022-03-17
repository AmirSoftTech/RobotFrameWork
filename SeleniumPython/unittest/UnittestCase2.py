import unittest
from selenium import webdriver

class MyTestCase(unittest.TestCase):
    def test_Google(self):
        self.driver = webdriver.Chrome(executable_path="E:/SeleniumPractice/chromedriver.exe")
        self.driver.get("https://www.google.com/")
        self.driver.close()

    def test_Being(self):
        self.driver = webdriver.Chrome(executable_path="E:/SeleniumPractice/chromedriver.exe")
        self.driver.get("https://www.bing.com/")
        self.driver.close()

if __name__ == '__main__':
    unittest.main()
