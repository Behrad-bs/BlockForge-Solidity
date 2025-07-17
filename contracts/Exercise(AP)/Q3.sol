/*
Write a smart contract that includes a function to update a numeric value,
and this update operation should only be executable by the contract owner.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import"@openzeppelin/contracts/access/Ownable.sol";
contract UP_First_way {
    uint public number;
    address public owner;
    modifier onlyOWNER {
        require(owner == msg.sender);
        _;
    }
    constructor() {
        owner = msg.sender;
    }
    function UPDATENUMBER(uint _number) public onlyOWNER {
        number = _number;
    }
}

contract UP_Second_way is Ownable {
    uint public number;
    constructor() Ownable(msg.sender) {}
     function UPDATENUMBER(uint _number) public onlyOwner {
        number = _number;
    }
}