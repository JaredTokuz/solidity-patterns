// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract Revert {
    uint256 public x;
    // Gas: 43,646
    function revertLate(uint256 i) external {
        x = i;
        require(i < 3, "i must be lt 3");
    }
}

contract OptRevert {
    uint256 public x;
    // Revert as early as possible
    // Gas: 21,537 
    function revertEarly(uint256 i) external {
        require(i < 3, "i must be lt 3");
        x = i;
    }
}
