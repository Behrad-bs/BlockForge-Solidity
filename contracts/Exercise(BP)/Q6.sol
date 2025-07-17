/*
Write a smart contract in which a number is taken from the user
, and all numbers up to that number are added together and the result is displayed.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Q6 {
    function MAKESUM(uint num) public view returns (uint sum) {
        uint i = 0;
        while(i < num)
        {
            i++;
        }
        sum = i;
    } 
}