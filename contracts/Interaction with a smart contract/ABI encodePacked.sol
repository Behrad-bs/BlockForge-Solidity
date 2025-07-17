/*
ABI encode/ABI encodePacked:
{
    The way tp interface with other contract --> like API
}
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ABI{
    function encodeit(uint a, uint b) public pure returns (bytes memory) {
        return abi.encode(a, b);
    }
    function encodeit2(uint a, uint b) public pure returns (bytes memory) {
        return abi.encodePacked(a, b);
    }
}