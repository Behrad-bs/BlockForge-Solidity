/*
Write a smart contract that checks the user's input age, and if the age entered is under 20
, displays a message titled 'Invalid Age
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Q4 {
    function CHECKINGAGR(uint _age) public pure returns (string memory message) {
        _age;
        if(_age < 20) {
            message = "invalid age";
        }
    }
}