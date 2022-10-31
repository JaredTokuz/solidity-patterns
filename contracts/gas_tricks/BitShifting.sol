// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract UncheckedMath {
    // Gas: 21,469
    function multiplyByTwo(uint256 n) external pure returns (uint256) {
        unchecked {
            return n * 2;
        }
    }

    // Gas: 21,450 
    function divideByTwo(uint256 n) external pure returns (uint256) {
        unchecked {
            return n / 2;
        }
    }
}

contract Shift {
    // Gas: 21,467
    function multiplyByTwo(uint256 n) external pure returns (uint256) {
        return n << 1;
    }

    // Gas: 21,445
    function divideByTwo(uint256 n) external pure returns (uint256) {
        return n >> 1;
    }
}
