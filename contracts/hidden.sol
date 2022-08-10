pragma solidity ^0.8.7;


interface IHidden {
    function mintNft(uint256 number) external returns (uint256);
}

interface IERC721 {
    function onERC721Received(address operator, address from, uint256 tokeId, bytes calldata data) external returns (bytes4);
    function transferFrom(address from, address to, uint256 id) external;
}

contract Found {

    constructor(address _hidden) public {

	IHidden hidden = IHidden(_hidden);
	
	uint256 value = uint256(keccak256(abi.encodePacked(address(this), block.difficulty, block.timestamp))) % 1000000;
	
	uint256 n = hidden.mintNft(value);
	IERC721(_hidden).transferFrom(address(this), msg.sender, 0);
    }


    function onERC721Received(
			      address operator,
			      address from,
			      uint256 tokenId,
			      bytes calldata data
			      ) external returns (bytes4) {

	return IERC721.onERC721Received.selector;
    }


}
    
