/*
Types of functions:
{
    1)view --> read value from block chain
    2)pure --> only for calculate(not read or write) 
    3)Nonpayable --> change value
    4)payale --> change block chain and get token
}
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Tyfun {
    uint public number = 10;
     function showNumber() public view returns (uint) {
        return number;
     }

     function numberMul(uint _number) public pure returns (uint) {
        return _number*2;
     }

      function nonPayable(uint _number) public {
        number = _number*2;
     }

     function Payable() public payable  {
        number = number*2;
     }
}