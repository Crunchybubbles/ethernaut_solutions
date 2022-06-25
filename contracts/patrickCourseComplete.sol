pragma solidity ^0.8.0;

interface CourseCompletedNFT {
    function mintNft(address yourAddress, bytes4 selector) external returns (uint256);
    function transferFrom(address from, address to, uint256 index) external;
    function balanceOf(address owner) external returns (uint256);
}

interface IERC721Receiver {
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4);
}



contract CCNFT is IERC721Receiver {
    uint256 public s_variable = 0;
    uint256 public s_otherVar = 0;

    function doSomething() public {
	s_variable = 123;
    }

    function doAnother() public {
	
    }

    function mintNFT(address _CourseCompletedNFT) public {
	bytes4 sig = bytes4(keccak256(bytes("doAnother()")));
	uint256 index = CourseCompletedNFT(_CourseCompletedNFT).mintNft(address(this), sig);
	CourseCompletedNFT(_CourseCompletedNFT).transferFrom(address(this), msg.sender, index - 1);
	require (CourseCompletedNFT(_CourseCompletedNFT).balanceOf(msg.sender) == 1);
    }

    function getOwner() public returns (address) {
	return address(this);
    }

    function onERC721Received(
			      address operator,
			      address from,
			      uint256 tokenId,
			      bytes calldata data
			      ) public returns (bytes4)
    {
	return IERC721Receiver.onERC721Received.selector;
    }

}
