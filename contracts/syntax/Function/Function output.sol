/*
Function output:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FUNOUT {
    function myReturn() public pure returns(uint, bool, address){
        return(10, true, address(2566));
    }

    function returnByname() public pure returns (uint a, bool b, address c){
        return(10, true, address(2566));
    }
    
    function returnBynamewithoutReturn() public pure returns (uint a, bool b, address c){
        a = 10;
        b = true;
        c = address(2566);
    }

    function destructuring() public pure returns (uint , bool , address, uint , uint , uint ){
        (uint i, bool j, address k) = myReturn();
        (uint n, , ) = myReturn();
        (uint x, ,uint y,) = (10, 30, 50 ,70);
        return(i,j,k,n,x,y);
    }

}
