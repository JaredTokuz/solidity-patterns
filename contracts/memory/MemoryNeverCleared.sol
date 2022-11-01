// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract Memory {

    // example that shows how memory is never cleared.
    // in a for loop example it would be allocated before the loop
    // 278,909 gas used
    function testMemory() external pure {
        for (uint256 i =0; i< 10; i++) {
            allocateMemory();
        }
    }

    
    function allocateMemory() internal pure {
        uint256[1000] memory array;
    }
}