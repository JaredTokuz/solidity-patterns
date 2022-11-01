// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract FunctionNames {
    // Functions are sorted in Ascending order of their hash signature and 
    // costs additional gas the farther down the list
    
    // Gas: 21,254
    function green() external pure returns (uint256) {
        return 1;
    }

    // 21,232
    function blue() external pure returns (uint256) {
        return 1;
    }

    // 21,210
    function red() external pure returns (uint256) {
        return 1;
    }

}
