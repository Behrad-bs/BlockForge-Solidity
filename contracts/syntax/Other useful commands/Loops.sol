/*
Loops:
{
    1)for
    2)while
    3)do ... while

    *cntinue --> Go to the next stage of loop
    *break --> end the loop
}
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LOOP {
    uint public sum;

    function FOR() public {
        for (uint i=0; i<5; i++){
           sum++;
        }
    }

    function WHILE() public {
        uint y = 0;
        while(y < 10){
            sum++;
            y++;
        }
    }

    function DO_WHILE() public {
        uint z = 0;
        do {
            sum++;
            z++;
        }
        while(z < 10);
    }
}