# @version 0.3.3

interface CoinFlip:
    def flip(_guess: bool) -> bool: nonpayable

@external
def true_or_revert(instance: address):
    assert CoinFlip(instance).flip(True) == True
