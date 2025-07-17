/*
Variable Override:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BASE {
    uint public number = 10;
}

contract DERIVED is BASE {
        constructor() {
        number = 20;
    }
}