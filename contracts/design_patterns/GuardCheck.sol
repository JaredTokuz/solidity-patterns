// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract GuardCheck {
    function donate(address payable addr) payable public {
        require(addr != address(0), "Invalid address");
        require(msg.value != 0, "Invalid value sent");
        uint balanceBeforeTransfer = address(this).balance;
        uint transferAmount;

        if (addr.balance == 0) {
            transferAmount = msg.value;
        } else if (addr.balance < msg.sender.balance) {
            transferAmount = msg.value /2;
        } else {
            revert("Donation address is too high");
        }

        (bool success, ) = addr.call{value: transferAmount}("");
        require(success, "Transfer failed.");
        assert(address(this).balance == balanceBeforeTransfer - transferAmount);
    }
}