// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract Memory {
    
    // [10] 343
    // [20] 403
    // [30] 464
    // [10000] 276,750
    // [20000] 922,844
    // [200000] out of gas error

    // memory costs grow eponentially based on usage
    function testMemory() external pure {
        uint256[10] memory array;
    }
}