/*
Write a smart contract that includes a function for addition and a function for multiplication of two numbers,
 and only the owner of the contract can perform the addition or multiplication operations.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Q5 {
    modifier ONLYADMIN {
        require(msg.sender == 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
         _;
    }
    function MAKESUM(uint a, uint b) public ONLYADMIN view returns(uint sum) {
        sum = a+b;
    }
    
    function MAKEMULTIPLY(uint a, uint b) public ONLYADMIN view returns(uint MUL) {
        MUL = a*b;
    }
}