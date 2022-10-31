// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract Precompute {
    // Gas: 21,317 
    function precomp() external pure returns (uint256) {
        uint256 a = 7;
        return 22 + a;
    }
}

contract OptPrecompute {
    // Optimizer can optimize the opcodes like this
    // Gas: 21,210 
    function precomp() external pure returns (uint256) {
        return 22 + 7;
    }
}
