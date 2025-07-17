/*
Write a smart contract that receives three numbers from a function in another smart contract, 
adds them together, and displays the result in a different smart contract.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    uint256 number1 = 3;
    uint256 number2 = 4;
    uint256 number3 = 5;

    function showNumbers() public view returns (uint256, uint256, uint256) {
        return (number1,number2,number3);
    }
}

interface IA {
    function showNumbers() external view returns (uint256, uint256, uint256);
}

contract B {
    IA contractA;

    constructor(address _contractA) {
        contractA = IA(_contractA);
    }

    function makeSum() public view returns (uint256 sum) {
        (uint256 num1, uint256 num2, uint256 num3) = IA(contractA).showNumbers();
        sum = num1 + num2 + num3;
    }
}

contract C {
    function showSum(address _contractB) public returns (uint256 sum) {
        (bool success, bytes memory data) = (_contractB).call(abi.encodeWithSignature("makeSum()"));
        require(success);
        return (abi.decode(data, (uint256)));
    }
}