/*
Event:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EVENT {
    event SUM(address indexed  sender, uint number1, uint number2, uint finalsum);
    function MAKESUM(uint _number1, uint _number2) public {
        uint sum = _number1+_number2;
        emit SUM(msg.sender, _number1, _number2, sum);
    }
}