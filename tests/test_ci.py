
def test_amazon(py):
    py.visit('https://amazon.com')
    assert py.contains('0Try Prime')



