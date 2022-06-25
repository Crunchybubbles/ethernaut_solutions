# @version 0.3.3

interface BlockChainBasicsNFT:
    def mintNft() -> uint256: nonpayable
    def transferFrom(_from: address, _to: address, _tokenId: uint256): nonpayable


interface SolidityBasicsNFT:
    def mintNft(location: uint256, newlocation: uint256) -> uint256: nonpayable
    def transferFrom(_from: address, _to: address, _tokenId: uint256): nonpayable

interface HardhatBasicsNFT:
    def mintNft(secret: uint256) -> uint256: nonpayable
    def transferFrom(_from: address, _to: address, _tokenId: uint256): nonpayable

interface PatrickToken:
    def mintMeAToken(): nonpayable
    def approve(spender: address, amount: uint256) -> bool: nonpayable

interface FullStackBasicsNFT:
    def mintNft() -> uint256: nonpayable
    def transferFrom(_from: address, _to: address, _tokenId: uint256): nonpayable

interface CourseCompletedNFT:
    def mintNft() -> uint256: nonpayable
    def transferFrom(_from: address, _to: address, _tokenId: uint256): nonpayable

interface ERC721:
    def transferFrom(_from: address, _to: address, _tokenId: uint256): nonpayable
    def balanceOf(_owner: address) -> uint256: nonpayable
    
@external
def __init__(
            _BlockChainBasicsNFT: address,
            _SolidityBasicsNFT: address,
            _location: uint256,
            _newlocation: uint256,
            _HardhatBasicsNFT: address,
            _seceret777: uint256,
            _PatrickToken: address,
            _FullStackNFT: address,
):
    index: uint256 = BlockChainBasicsNFT(_BlockChainBasicsNFT).mintNft()
    BlockChainBasicsNFT(_BlockChainBasicsNFT).transferFrom(self, msg.sender, index - 1)

    index = SolidityBasicsNFT(_SolidityBasicsNFT).mintNft(_location, _newlocation)
    SolidityBasicsNFT(_SolidityBasicsNFT).transferFrom(self, msg.sender, index - 1)

    index = HardhatBasicsNFT(_HardhatBasicsNFT).mintNft(_seceret777)
    HardhatBasicsNFT(_HardhatBasicsNFT).transferFrom(self, msg.sender, index - 1)

    PatrickToken(_PatrickToken).mintMeAToken()
    assert PatrickToken(_PatrickToken).approve(_FullStackNFT, 10**18)
    index = FullStackBasicsNFT(_FullStackNFT).mintNft()
    FullStackBasicsNFT(_FullStackNFT).transferFrom(self, msg.sender, index - 1)

    assert ERC721(_BlockChainBasicsNFT).balanceOf(msg.sender) == 1
    assert ERC721(_SolidityBasicsNFT).balanceOf(msg.sender) == 1  
    assert ERC721(_HardhatBasicsNFT).balanceOf(msg.sender) == 1
    assert ERC721(_FullStackNFT).balanceOf(msg.sender) == 1
