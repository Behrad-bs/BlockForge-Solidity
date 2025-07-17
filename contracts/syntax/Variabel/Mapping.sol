/*
Mapping:
{
    Like python dictionary
}
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MAPPING {
    mapping(uint => address) public  myMapping;
    mapping(address => uint) public balance;
    mapping(address => mapping(address => uint)) public allowance;
}