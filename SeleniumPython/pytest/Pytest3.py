#@pytest.yield_fixture()
import pytest

@pytest.yield_fixture()
def setup():
    print("Once before every method")
    yield
    print("Once after every method")

def test_Method1(setup):
    print("This is test method1")

def test_Method2(setup):
    print("This is test method2")

def test_Method3(setup):
    print("This is test method3")