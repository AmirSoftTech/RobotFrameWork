# setUp, tearDown, setUpClass, tearDownClass, setUpModule, tearDownModule :
import unittest

def setUpModule():
    print("setUpModule")

def tearDownModule():
    print("tearDownModule")

class MyTestCase(unittest.TestCase):

    @classmethod
    def setUp(self):
        print("This is login test")

    @classmethod
    def tearDown(self):
        print("This is logout test")

    @classmethod
    def setUpClass(cls):
        print("Open Application")

    @classmethod
    def tearDownClass(cls):
        print("Close Application")

    def test_Search(self):
        print("This is search method")

    def test_AdvanceSearch(self):
        print("This is adv. search method")

    def test_Prepaid(self):
        print("This is Prepaid method")

    def test_Postpaid(self):
        print("This is Postpaid method")

if __name__ == '__main__':
    unittest.main()
