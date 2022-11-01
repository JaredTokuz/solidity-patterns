// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

// input : 0x00ff00ff

contract Memory {
    
    // memory is more expensive but that input is mutable
    // 22,011
    function doNothing(bytes memory _mybytes) external pure {
        
    }
}


contract Calldata {
    
    // calldata is cheaper but it is read only
    // 21,865
    function doNothing(bytes calldata _mybytes) external pure {
        
    }
}

contract CalldataChange {
    
    // calldata changing the input value is more expensive that memory
    // 22,442
    function doNothing(bytes calldata _mybytes) external pure returns (bytes memory) {
        bytes memory _myLocalbytes = _mybytes;
        _myLocalbytes[0] = 0xaa;
        return _myLocalbytes;
    }
}

contract MemoryChange {
    
    // memory changing the input value is cheaper than calldata creating new value
    // 22,419
    function doNothing(bytes memory _mybytes) external pure returns (bytes memory) {
        _mybytes[0] = 0xaa;
        return _mybytes;
    }
}