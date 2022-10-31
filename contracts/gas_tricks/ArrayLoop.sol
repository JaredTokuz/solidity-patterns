// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract ArrayLoop {
    uint256[] array;

    function setArray(uint256[] memory _array) external {
        require(_array.length <= 10, "too long");
        array = _array;
    }

    // Gas: 46,539 
    function getArraySum() external view returns (uint256 sum) {
        for (uint256 i = 0; i < array.length; i++) {
            sum += array[i];
        }
    }
}

contract OptArrayLoop {
    uint256[] array;

    function setArray(uint256[] memory _array) external {
        require(_array.length <= 10, "too long");
        array = _array;
    }

    // Caching the array length lowers gas price since warm access read is 100 per call
    // Gas: 45,644 
    function getArraySum() external view returns (uint256 sum) {
        uint256 _len = array.length;
        for (uint256 i = 0; i < _len; i++) {
            sum += array[i];
        }
    }
}
