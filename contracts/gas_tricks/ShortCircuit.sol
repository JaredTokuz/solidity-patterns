// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract ShortCircuit {
    bool allowed = true;

    // Gas: 23,326
    function shortCircuit() external view {
        require(allowed || block.timestamp > 1649604, "invalid");
    }
}

contract OptimizedShortCircuit {
    bool allowed = true;

    // When using conditional statements ordering by whats cheapest can save gas
    // Gas: 21,225
    function shortCircuit() external view {
        require(block.timestamp > 1649604 || allowed, "invalid");
    }
}
