/*
Address:
{
    a) EOA --> Externally owned accounts --> private key
    b)SCA --> smart contract account --> no private key
    address --> 20bytes --> 160bites 
    transformer number to address --> address <visibility> <name> = adress(number)
    pay --> address payable <visibility> <name> = payable(Address) 
} 
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ADDRESS { 
    address public myaddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public myaddr2 = address(20);
    address payable public myaddr = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
}