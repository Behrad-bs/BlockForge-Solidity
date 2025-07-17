/*
Interface:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    uint public SUM;

    function makeSUM(uint num1, uint num2) public {
        SUM = num1 + num2;
}
}

interface IA {
    function SUM() external view returns (uint);
    function makeSUM(uint num1, uint num2) external; 
}

contract B {
    function doSUM(address _contractA, uint num1, uint num2) public {
        IA(_contractA).makeSUM(num1, num2);
    }
    function showSUM(address _contractA) public view returns (uint) {
       return IA(_contractA).SUM();
    }

}