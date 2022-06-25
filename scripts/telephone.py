import brownie
from brownie import accounts, telephone

def main():
    accounts.load("testacc")
    telephone.deploy({"from": accounts[0]})
    telephone[-1].change_owner("0x9b0b6161CeeD78552A23AC29bBC59C40609595F3", accounts[0], {"from": accounts[0]})
