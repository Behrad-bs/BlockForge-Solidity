/*
More cocrpts in function:
{
    function with same name but diffrent variable
}
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FUNCTION {
    uint public number;
    function updateNUMBER() public {
        number = 10;
    }
    function updateNUMBER(uint _number) public {
        number = _number;
    }
}