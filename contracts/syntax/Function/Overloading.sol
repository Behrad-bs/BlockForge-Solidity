/*
Overloading:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract fUNOVER {
    function getsum(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
     function getsum(uint a, uint b, uint c) public pure returns (uint) {
        return a + b + c;
    }
    function makesume1() public pure returns (uint) {
        return getsum(2, 3);
    }
    function makesume2() public pure returns (uint) {
        return getsum(2, 3, 4);
    }
}