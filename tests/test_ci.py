import pytest

def test_amazon(py):
    py.visit('https://amazon.com')
    assert py.contains('Try Prime')



