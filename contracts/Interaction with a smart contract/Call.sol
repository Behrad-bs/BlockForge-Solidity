/*
Call:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BASE {
    uint public sum;
    function SUM(uint num1, uint num2) public returns (uint) {
        sum = num1 + num2;
        return sum;
    }
}

contract DERIVED {
    function doSUM(address contractA, uint num1, uint num2) public returns (bytes memory) {
        (bool success, bytes memory data) =  
            contractA.call(abi.encodeWithSignature("SUM(uint256,uint256)", num1, num2));
        require(success, "call failed");
        return data;
    }
}