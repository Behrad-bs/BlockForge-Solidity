/*
Sing Inheritance:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    uint public number = 10;
}

contract B is A {
    uint public number2 = 20;
}