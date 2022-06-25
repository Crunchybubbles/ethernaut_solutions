pragma solidity ^0.6.0;

interface GatekeeperOne {
    function enter(bytes8 _gateKey) external returns (bool);

}

contract Level13 {
 
    function _enter(bytes8 _gateKey, address instance) public {
	bool succ = GatekeeperOne(instance).enter(_gateKey);
	require(succ == true);

    }
    function gateThree_1(bytes8 _gateKey) public pure returns (bool) {
	if (uint32(uint64(_gateKey)) == uint16(uint64(_gateKey))) {
	    return true;
	}
	    
    }
    function gateThree_2(bytes8 _gateKey) public pure returns (bool) {
	if (uint32(uint64(_gateKey)) != uint64(_gateKey)) {
	    return true;
	}
    }
    function gateThree_3(bytes8 _gateKey) public view returns (bool) {
	if (uint32(uint64(_gateKey)) == uint16(tx.origin)) {
	    return true;
	}
    }

    function gateThree(bytes8 _gateKey) public view returns (bool) {
	if (gateThree_1(_gateKey) && gateThree_2(_gateKey) && gateThree_3(_gateKey)) {
	    return true;
	} else {
	    return false;
	}
    }

    function t() public view returns (uint16 rhs) {
	rhs = uint16(tx.origin);
    }

    function lhs(bytes8 _gateKey) public pure returns (bytes8 input, uint64 mid, uint32 output) {
	input = _gateKey;
	mid = uint64(_gateKey);
	output = uint32(uint64(_gateKey));
    }

    function one_three(bytes8 _gateKey) public view returns (bool) {
	if ((uint16(uint64(_gateKey)) == uint16(tx.origin)) && (uint16(tx.origin) == uint32(uint64(_gateKey))) && (uint16(uint64(_gateKey)) == uint32(uint64(_gateKey)))) {
	    return true;
	}
    }
    event KEY(bytes8 key);

    function crack(bytes8 start) public {
	uint64 stop = uint64(start) + 1000;
	for (uint64 i = uint64(start); i <= uint64(stop); i++) {
	    if (one_three(bytes8(i))) {
		emit KEY(bytes8(i));
	    }
	}
    }    
    
    // uint16(tx.origin) == uint16(uint64(_gateKey)) != uint64(_gateKey) 
 
}

contract gas_test {
    modifier gateOne() {
	require(msg.sender != tx.origin);
	_;
    }

    function test() public gateOne returns (uint256) {
	return gasleft();
    }
    
}

interface gas_Test {
    function test() external returns (uint256);
}
contract gas_tester {
    function test_test(address instance) public returns (uint256) {
	return gas_Test(instance).test();
    }
}
