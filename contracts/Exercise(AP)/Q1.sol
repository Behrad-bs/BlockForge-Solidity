/*
Write a smart contract that retrieves a user's first and last name from a child contract 
at deployment time and uses it in the parent contract.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Parent {
    string public firstName;
    string public lastName = "Solidian";
    constructor(string memory _firstName) {
        firstName = _firstName;
    }

    function myChild() public view returns (string memory whoIsMyChild) {
        whoIsMyChild = string.concat(firstName, lastName);
    }
}

contract Child is Parent {
    constructor(string memory firstName) Parent (firstName){}
}