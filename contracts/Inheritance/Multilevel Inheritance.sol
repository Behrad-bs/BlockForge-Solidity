/*
Multilevel Inheritance:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    uint public num = 10;
    uint public age = 30;
}
contract B is A{
    function showAGE() public view returns (uint) {
        return age;
    }
}

contract C is B{
    bool public satatus = true;
    function showNumber() public view returns (uint) {
        return num;
    }
}