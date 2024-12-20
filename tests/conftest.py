import pytest


@pytest.fixture(scope="session")
def name() -> str:
    """Name.

    Returns
    -------
    str
        A name

    """
    return "world"
