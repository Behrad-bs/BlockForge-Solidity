/*
Staticcall:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BASE {
    uint public sum;
    function SUM(uint num1, uint num2) public returns (uint) {
        sum = num1 + num2;
        return sum;
    }
    function SUM2(uint num1, uint num2) public pure returns (uint mysum) {
        mysum = num1 + num2;
    }
}

contract DERIVED {
    function doSUM(address contractA, uint num1, uint num2) public view returns (bytes memory) {
        (bool success, bytes memory data) =  
            contractA.staticcall(abi.encodeWithSignature("SUM2(uint256,uint256)", num1, num2));
        require(success, "call failed");
        return data;
    }
}