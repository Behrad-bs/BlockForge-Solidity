/*
Write a smart contract that takes three numbers through one function, adds them together
, and displays the result through another function.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SUM{
    function makeSum(uint num1, uint num2, uint num3) internal pure returns(uint){
        return (num1 + num2 + num3);
    }

    function showSum(uint num1, uint num2, uint num3) public pure returns(uint sum) {
       (sum) = makeSum(num1, num2, num3);
    }
}