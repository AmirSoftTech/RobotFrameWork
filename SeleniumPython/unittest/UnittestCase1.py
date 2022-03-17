import unittest
from selenium import webdriver

class MyTestCase(unittest.TestCase):
    def test_FirstUnittest(self):
        self.driver = webdriver.Chrome(executable_path="E:/SeleniumPractice/chromedriver.exe")
        self.driver.get("https://www.google.com/")

if __name__ == '__main__':
    unittest.main()

#Run unittest code :
#python -m unittest C:/Users/amirulcse/PycharmProjects/RobotFrameWork/SeleniumPython/UnitestCase1.py