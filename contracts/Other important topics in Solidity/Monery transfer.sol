/*
Money transfer:
{
    1) transfer --> 2300gas --> revert
    2) send --> 2300gas --> false or true
    3) call --> custom gas --> (bool, bytes) --> acccepted way
}
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MONEY {
    function sendVIATRAN(address payable _to) public payable {
        _to.transfer(msg.value);
    }
    function sendVIASEND(address payable _to) public payable {
        bool success = (_to).send(msg.value);
    }
    function sendVIACAL(address payable _to) public payable {
       (bool success, bytes memory data) = 
            (_to).call{value: msg.value}("");
        
    }
}