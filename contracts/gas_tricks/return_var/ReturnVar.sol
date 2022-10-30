// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract ReturnVar {
    // Gas: 21,536
    function getArraySum(uint256 num) external pure returns (uint256) {
        uint256 sum;
        sum += num;
        return sum;
    }
}

