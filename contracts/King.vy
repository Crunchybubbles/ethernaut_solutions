# @version 0.3.3


#prize: uint256

@external
@payable
def __init__(instance: address):
    raw_call(instance, b"", gas=10000000000000000, value=msg.value)

@external
@payable
def __default__():
    assert False
