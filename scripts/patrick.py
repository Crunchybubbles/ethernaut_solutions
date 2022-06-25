import brownie
from brownie import accounts, patrick, web3, CCNFT

def main():
    BlockChainBasicsNft="0xaAcb0B62aEB7Db938f12161Da0E45fC3B2B34179"
    SolidityBasicsNFT="0xA457A0F9b6EDbEc66941D7Ed1D4d4834330ABf52"
    # loc = web3.eth.get_storage_at(SolidityBasicsNFT, 7)
    # print(loc)
    location=3
    newlocation=0
    # if loc == b"\x01":
    #     location = 0
    # elif loc == b"\x01\x00":
    #     location = 1
    # elif loc == b"\x01\x00\x00":
    #     location = 2
    # elif loc == b"\x01\x00\x00\x00":
    #     location = 3
    # elif loc == b"\x01\x00\x00\x00\x00":
    #     location = 4
    # print(location)    
    HardhatBasicsNFT="0xB29eA9ad260B6DC980513bbA29051570b2115110"
    seceret777 = web3.eth.get_storage_at(HardhatBasicsNFT, 777)
    patrickToken = "0x5ECEdc30224D9B3b5EE4C2D7ed17C197cb1d263b"
    FullStackBasicsNFT = "0xda4a7Da4397414C089062cf6256989d2C29E31c9"
    CourseCompleteNFT = "0x9E9a4e58dDc9483d241AfC9a028E89BD9b9fa683"
    patrick.deploy(
        BlockChainBasicsNft,
        SolidityBasicsNFT,
        location,
        newlocation,
        HardhatBasicsNFT,
        seceret777,
        patrickToken,
        FullStackBasicsNFT,
        {"from": accounts[0]}
    )

    c = CCNFT.deploy({"from": accounts[0]})
    c.mintNFT(CourseCompleteNFT, {"from": accounts[0]})

