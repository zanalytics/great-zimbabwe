from great_zimbabwe.hello import hello


def test_hello():
    assert hello(name="World") == "Hello, World!"
