/*
Time and monetary units in Solidity:
{
    decinals --> 18
    ETH_unit --> ETH$ --> 0.000000000000000001 = 1 wei , 0.0000000001 = Gwei , 1 = ether
}
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TIME {
    uint public _1sec = 1 seconds;
    uint public _1min = 1 minutes;
    uint public _1day = 1 days;
    uint public _1hour = 1 hours;
    uint public _1week = 1 weeks;
}
contract ETH_UNIT {
    uint public _1wei = 1 wei;
    uint public _1Gwei = 1 gwei;
    uint public _1Ewei = 1 ether;
}