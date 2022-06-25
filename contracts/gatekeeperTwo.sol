pragma solidity ^0.6.0;

interface keeper2 {
    function gateOne() external returns (bool);
    function gateTwo() external returns (uint256);
    function gateThree(bytes8 _gateKey) external returns (bool);
    function t3(bytes8 _gateKey) external returns (uint64);
    function enter(bytes8 _gateKey) external returns (bool);
}
contract Level14 {
    /* bool public gate1; */
    /* uint256 public gate2; */
    /* bool public gate3; */
    /* uint64 public _t3; */
    
    /* constructor(address instance, bytes8 _gateKey) public { */
    /* 	keeper2 gate = keeper2(instance); */
    /* 	gate1 = gate.gateOne(); */
    /* 	gate2 = gate.gateTwo(); */
    /* 	gate3 = gate.gateThree(_gateKey); */
    /* 	_t3 = gate.t3(_gateKey); */
    /* } */

    function tesy3() public view returns (uint64) {
	return (uint64(bytes8(keccak256(abi.encodePacked(address(this))))));
	
    }

    function tesy4(bytes8 _gateKey) public view returns (uint64) {
	return uint64(_gateKey);
    }

    function xor(bytes8 _gateKey) public view returns (uint64) {
	return tesy3() ^ tesy4(_gateKey);
    }
    /* function _enter(address instance, bytes8 _gateKey) public { */
    /* 	bool g = keeper2(instance).enter(_gateKey); */
    /* 	require(g); */
    /* }     */

    function b() public view returns (bytes8) {
	bytes8 key = bytes8(keccak256(abi.encodePacked(address(this))));
	return key;
    }

    function key() public view returns (bytes8) {
	bytes8 c = 0xffffffffffffffff;
	bytes8 a = bytes8(keccak256(abi.encodePacked(address(this))));
	bytes8 key = c ^ a;
	return key;
    }
}
//this is the solution contract
contract gate2 {
    constructor(address instance) public {
	bytes8 c = 0xffffffffffffffff;
	bytes8 a = bytes8(keccak256(abi.encodePacked(address(this))));
	bytes8 key = c ^ a;
	require(keeper2(instance).enter(key));
    }
}

contract g2 {

    function gateOne() public view returns (bool) {
	if (msg.sender != tx.origin) {
	    return true;
	} else {
	    return false;
	}
    }
    
    function gateTwo() public view returns (uint256) {
	uint256 x;
	assembly { x := extcodesize(caller()) }
	return x;
    }

    function gateThree(bytes8 _gateKey) public view returns (bool) {
	if (uint64(bytes8(keccak256(abi.encodePacked(msg.sender)))) ^ uint64(_gateKey) == uint64(0) - 1) {
	    return true;
	} else {
	    return false;
	}
    }
	    
    function t3(bytes8 _gateKey) public view returns (uint64) {
	return (uint64(bytes8(keccak256(abi.encodePacked(msg.sender)))) ^ uint64(_gateKey));
    }
}
