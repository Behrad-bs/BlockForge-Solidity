/*
Write a smart contract in which the owner of the contract is set to the person who deploys it.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OWNER {
    address public owner;
    constructor() {
        owner = msg.sender;
    }
    
}
