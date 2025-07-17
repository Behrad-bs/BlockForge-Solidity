/*
Ownable contract:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import"@openzeppelin/contracts/access/Ownable.sol";

contract OWNER is Ownable {
    uint public number;
    constructor() Ownable(msg.sender) {}
    function updatenumber(uint _number) public onlyOwner {
        number = _number;
    }
}