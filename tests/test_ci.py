
def test_amazon_fail(py):
    py.visit('https://amazon.com')
    assert py.contains('0Try Prime')



def test_amazon_success(py):
    py.visit('https://amazon.com')
    assert py.contains('Try Prime')

