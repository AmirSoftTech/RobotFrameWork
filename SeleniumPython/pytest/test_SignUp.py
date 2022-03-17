import pytest
@pytest.yield_fixture()
def setUp():
    print("opening url to signup")
    yield
    print("closing browser after signup")

def test_signupByEmail(setUp):
    print("This is signup by Email")

def test_signupByFacebook(setUp):
    print("This is signup by Facebook")