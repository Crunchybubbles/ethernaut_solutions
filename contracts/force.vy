# @version 0.3.3

@payable
@external
def __init__(instance: address):
    selfdestruct(instance)    
