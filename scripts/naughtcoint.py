import brownie
from brownie import accounts, Level15

def main():
    Level15[0].getCoins("0x08f9b252cDc34219854CcbE48026D9376E79bA5c", {"from": accounts[0]})
