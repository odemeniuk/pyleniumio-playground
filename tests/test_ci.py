

def test_amazon_success(py):
    py.visit('https://amazon.com')
    assert py.contains('Try Prime')

