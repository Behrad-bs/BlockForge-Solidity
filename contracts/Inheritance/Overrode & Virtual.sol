/*
Override & Virtual:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SHAPE {
    uint public width = 5;
    uint public length = 3;
    function calcAREA() public view virtual  returns (uint) {

    }
}

contract square is SHAPE {
    function calcAREA() public view virtual override returns (uint) {
        return width*width;
    }
}

contract rectangle is SHAPE, square {
    function calcAREA() public view override(SHAPE, square) returns (uint) {
        return width*length;
    }
}