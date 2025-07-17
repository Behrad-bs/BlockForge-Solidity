/*
Function introduction:
{
    1)getter 
    2)setter
}
*/
// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract FUNCTION {
    uint public number = 10;
    string public name = "solidity";

    function showNumber() public view returns (uint) {
        return number;
    }

     function setNumber() public {
        number = 25;
    }

    function showName() public view returns (string memory) {
        return name;
    }
     function setName(string memory _name) public {
        name = _name;
    }
}
