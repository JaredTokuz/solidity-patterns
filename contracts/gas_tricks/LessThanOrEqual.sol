// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract LessThan {
    // Less than without eq is cheaper 
    // Gas: 21,451
    function lessThan(uint256 n) external pure returns (bool) {
        return n < 3;
    }
}

contract LessThanEq {
    // Gas: 21,454 
    function lessThan(uint256 n) external pure returns (bool) {
        return n <= 2;
    }
}
