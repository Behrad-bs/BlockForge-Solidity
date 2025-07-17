/*
Constant_Immutable:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract constant_Immutable {
    address constant public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address immutable public charitywallet = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address immutable public charitywallet2;
    constructor() {
        charitywallet2 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    }
}