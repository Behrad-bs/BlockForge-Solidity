/*
Write a smart contract that allows a user to send a certain amount of Ethereum to it,
and then the sender can withdraw the corresponding amount of Ethereum based on their balance.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Q4 {
      error NotEnoughEth();
    mapping(address => uint) balance;

    event FundsWithdrawal(address Who, uint256 Amount);

    function withdraw(uint256 withdrawAmount) public {
        address payable owner = payable(msg.sender);
        if(balance[owner] < withdrawAmount) revert NotEnoughEth();
        balance[owner] -= withdrawAmount;
        (owner).transfer(withdrawAmount);

        emit FundsWithdrawal(owner, withdrawAmount);
    }

    receive() external payable { 
        balance[msg.sender] += msg.value;
    }
}