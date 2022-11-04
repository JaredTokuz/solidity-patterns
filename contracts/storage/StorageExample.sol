// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract StorageExample {
    uint256 private myInteger;

    // zero => 43,324
    // one (same value) => 23,424
    function setToOne() external {
        myInteger = 1;
    }

    // non-zero => 26,203
    function setToTwo() external {
        myInteger = 2;
    }

    // non-zero => 21,446 you get a refund from setting back to zero
    // zero => 23,446
    function setToZero() external {
        myInteger = 0;
    }

    // always => 23,355
    function getInteger() external view returns(uint256) {
        return myInteger;
    }

    // zero => 43,386
    // non-zero => 26,286
    function getAndSetInteger() external {
        uint256 _myInteger = myInteger;
        myInteger = _myInteger + 1;
    }
}

