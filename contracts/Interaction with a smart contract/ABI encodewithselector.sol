/*
ABI encodewithselector:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    uint public sum;

    function makeSum(uint num1, uint num2) public returns (uint){
        sum = num1 + num2;
        return sum;
    }
}
interface IA {
    function makeSum(uint num1, uint num2) external returns (uint);
}

contract B {
    A newcontractAobject = new A();
    function doTheSum1(address contractA, uint num1, uint num2) public returns (bytes memory) {
        (bool success, bytes memory data) = 
            contractA.call(abi.encodeWithSelector(IA(contractA).makeSum.selector, num1, num2));//("makeSum(uint256,uint256)", num1, num2));
        require(success, "Call failed");
        return data;
    }
    function doTheSum2(address contractA, uint num1, uint num2) public returns (bytes memory) {
        (bool success, bytes memory data) = 
            contractA.call(abi.encodeWithSelector(newcontractAobject.makeSum.selector, num1, num2));//("makeSum(uint256,uint256)", num1, num2));
        require(success, "Call failed");
        return data;
    }
}