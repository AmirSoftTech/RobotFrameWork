import pytest
from selenium import webdriver
from selenium.webdriver.common.by import By

class TestOrangeHRM():

    @pytest.fixture()
    def setup(self):
        self.driver = webdriver.Chrome(executable_path="E:/SeleniumPractice/chromedriver.exe")
        self.driver.maximize_window()
        yield
        self.driver.close()


    def test_homePageTitle(self,setup):
        self.driver.get("https://opensource-demo.orangehrmlive.com/")
        assert self.driver.title=="OrangeHRM"

    def test_login(self, setup):
        self.driver.get("https://opensource-demo.orangehrmlive.com/")
        self.driver.find_element(By.ID, "txtUsername").send_keys("Admin ")
        self.driver.find_element(By.ID, "txtPassword").send_keys("admin123 ")
        self.driver.find_element(By.ID, "btnLogin").click()
        assert self.driver.title=="OrangeHRM"

#Run pytest from terminal and generate reports:
#
#pytest -v -s --html=.\reports\report.html  pyTest/PytestReportGenerate.py
#.\reports is a directory
#report.html is file name


