/*
Bytes:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BYTES {
    bytes public dynamicbytes = "hello";
    function work() public {
         uint length = dynamicbytes.length; //bytes length
         dynamicbytes.pop();
        dynamicbytes.push("o");
        delete dynamicbytes[length - 1];
         dynamicbytes[2] = "f";
    }
}