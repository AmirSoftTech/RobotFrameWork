# assertIn, assertNotIn
import unittest

class MyTestCase(unittest.TestCase):
    def test_Name(self):
        list = {"Python", "Selenium", "Java"}
        self.assertIn("Python", list) # First element will present in second element
        #self.assertNotIn("Php", list) #First element will not present in second element

if __name__ == '__main__':
    unittest.main()
