/*
Question:
Write a smart contract that includes a numeric array of fixed length 3
, where the elements are values entered by the user.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract numeric_array {
    
    uint[3] public numbers;
    function addNumbers(uint num1, uint num2, uint num3) public {
        numbers[0] = num1;
        numbers[1] = num2;
        numbers[2] = num3;
    }

}