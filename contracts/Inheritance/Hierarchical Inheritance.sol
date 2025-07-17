/*
Hierarchichal Inheritance:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    uint public num = 10;
    uint public age = 30;
}

contract B is A{
    function showAGe() public view returns (uint) {
        return age;
    }
}

contract C is A{
    bool public satatus = true;
    function showNUMBER() public view returns (uint) {
        return num;
    }
}