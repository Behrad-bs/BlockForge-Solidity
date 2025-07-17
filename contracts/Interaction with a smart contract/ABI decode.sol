/*
ABI decode:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ABI {
    function encodeit(uint a, uint b) public pure returns (bytes memory) {
        return abi.encode(a, b);
    }
    function decodeit(bytes memory data) public pure returns (uint,uint) {
        return abi.decode(data,(uint,uint));
    }
}