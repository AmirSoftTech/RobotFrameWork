# Rational comparision
# assertGreater, assertGreaterEqual, assertLess, assertLessEqual
import unittest
class MyTestCase(unittest.TestCase):
    def test_something(self):
        #self.assertGreater(20, 10)
        #self.assertGreaterEqual(20, 20)
        #self.assertLess(10, 20)
        self.assertLessEqual(10, 10)

if __name__ == '__main__':
    unittest.main()
