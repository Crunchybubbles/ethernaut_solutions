import brownie
from brownie import accounts, gate2

def main():
    #
    accounts.load("testacc")
    gate2.deploy("0x28546BF47f8A61E34886160DD904420d63C2eFD2", {"from": accounts[0]})
    # goOn = True
    # index = 0
    # key = hex(index)
    # while goOn:
    #     print(key)
    #     try:
    #         gate2.deploy("0x28546BF47f8A61E34886160DD904420d63C2eFD2", key, {"from": accounts[0]})
    #         goOn = False
    #         break
    #     except ValueError:
    #         index += 1
    #         key = hex(index)
    # c = Level14[0]
    # goOn = True
    # index = 0
    # key = hex(index)
    # target = (2**64) - 1
    # while goOn:
    #     r = c.xor(key)
    #     print(key)
    #     if r == target:
    #         print("this is the key", key)
    #         goOn = False
    #         break
    #     index += 1
    #     key = hex(index)
