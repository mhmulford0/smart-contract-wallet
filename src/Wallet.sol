// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract Wallet {
    mapping(address user => uint balance) public userBalance;

    event Deposit(address indexed depositor, uint amt);
    event Withdrawl(address indexed withdrawer, uint amt);

    function deposit() public payable {
        require(msg.value > 0, "tx value must be greater than 0");

        userBalance[msg.sender] = userBalance[msg.sender] + msg.value;

        emit Deposit(msg.sender, msg.value);
    }

    function withdraw() public payable {
        uint currBal = userBalance[msg.sender];
        require(currBal > 0, "cannot withdraw, balance must be greater than 0");

        userBalance[msg.sender] = userBalance[msg.sender] + msg.value;

        emit Withdrawl(msg.sender, msg.value);
    }
}
