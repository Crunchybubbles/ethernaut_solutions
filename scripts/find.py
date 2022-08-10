import brownie
from brownie import accounts, Contract, Found


def main():
    c = Contract("0xeF6ff2E5Cd9d83D7E460C415c155e3f3d95E30C7")
    print(c.balanceOf(accounts[0]))

    #f = Found.deploy({"from": accounts[0]})
    f = Found.deploy(c.address, {"from": accounts[0]})
    #c.approve(f.address, 0, {"from": accounts[0]})
    #    print(c.balanceOf(f.address))
    #f.find(c.address, {"from": accounts[0]})
    print(c.balanceOf(accounts[0]))
#    print(c.balanceOf(f.address))
