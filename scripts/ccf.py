import brownie
from brownie import accounts, CCNFT

def main():
    c = CCNFT.deploy({"from": accounts[0]})
    ccc = "0x9E9a4e58dDc9483d241AfC9a028E89BD9b9fa683"
    c.mintNFT(ccc, {"from": accounts[0]})
