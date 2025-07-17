/*
Multiple Inheritance:
{
    most-based contract ----> most-derived contract
}
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    uint public number = 10;
    uint public age = 30;
}

contract B is A{
    function showNumber() public view returns (uint) {
        return number;
    }
}

contract C is A {

}

contract D is A, B, C {
    function showAge() public view returns (uint) {
        return age;
    }
}