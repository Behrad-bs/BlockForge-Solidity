/*
Modofiers:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MODOFIER {
    modifier onlythisAddress{
        //require(msg.sender == 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        if(msg.sender == 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4){
            _;
        }
    }

    function makesum() public view onlythisAddress returns(uint sum){
       return  sum = 2 + 3;
    }
}