/*
Function_Constructor::
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FUNCONS {
    uint public number = 10;
    address public owner;

    constructor() payable {
        number = 25;
        owner = msg.sender;
    }
}