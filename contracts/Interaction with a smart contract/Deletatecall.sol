/*
Deletgate call:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    uint public number;
    uint public sum;
    address public whoIsSender;

    function makeSum(uint num1, uint num2) public returns (uint){
        sum = num1 + num2;
        number = num1;
        whoIsSender = msg.sender;
        return sum;
    }

    function makeSum2(uint num1, uint num2) public pure returns (uint mySum){
        mySum = num1 + num2;
    }
}

contract B {
    uint public newNumber;
    uint public newSum;
    address public whoIsSender;

    function doTheSum(address contractA, uint num1, uint num2) public returns (bytes memory) {
        (bool success, bytes memory data) = 
            contractA.delegatecall(abi.encodeWithSignature("makeSum(uint256,uint256)", num1, num2));
        require(success, "Call failed");
        return data;
    }
}