/*
Conditions:
{
    1) if
    2) if else
    3) else
}
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CONDITIONS {
    uint public age;
    function setAge(uint _age) public returns (string memory) {
        if(_age < 20) {
            age = _age;
            return "You are teen";
        }
        else if(_age>=20 && _age<=50) {
            age = _age;
            return "You are young";
        }
        else {
            return "You are old";
        }
    }
}