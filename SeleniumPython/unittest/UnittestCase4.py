#Skipping Tests
import unittest

class MyTestCase(unittest.TestCase):

    @unittest.SkipTest
    def test_Search(self):
        print("Search")

    @unittest.skip("Due to some reason this test cas is not available!!")
    def test_Advsearch(self):
        print("Advsearch")

    @unittest.skipIf(2==2, "The conditions is true")
    def test_Prepaid(self):
        print("Prepaid")

    def test_Postpaid(self):
        print("Postpaid")

    def test_LoginByEmail(self):
        print("LoginByEmail")

    def test_LoginBySocialMedia(self):
        print("LoginBySocialMedia")

if __name__ == '__main__':
    unittest.main()
