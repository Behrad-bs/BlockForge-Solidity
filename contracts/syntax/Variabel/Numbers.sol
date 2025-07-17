/*
How to use Number:
{
    uint 0 to +inf:
    {
    uint <--> uint256 --> 32byte
    uint8 --> byte
    uint16 --> 2byte
    ...
    uint256 --> 32yte
    }

    int --> -inf to +inf:
    {
        int <--> int256 --> 32byte
        int8 --> 1byte
        int16 --> 2byte
        ...
        int256 --> 32byte
    }
}
min --> uint(n) <visibility> <name> = type(uint(n)).min
max --> uint(n) <visibility> <name> = type(uint(n)).max
*/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NUMBERS {
    int public number1 = -10;
    uint public number2 = 20;
    uint256 public number3 = 22;
    int256 public number4 = -12;
    uint24 public minnumber = type(uint24).min;
    uint24 public maxnumber = type(uint24).max;
}