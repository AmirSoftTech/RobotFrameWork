import pytest

@pytest.yield_fixture()
def setUp():
    print("opening url to login")
    yield
    print("closing browser after login")

def test_loginByEmail(setUp):
    print("This is login by Email")

def test_loginByFacebook(setUp):
    print("This is login by Facebook")