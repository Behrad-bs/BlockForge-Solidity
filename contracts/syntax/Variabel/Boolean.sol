/*
Boolean
{
    bool = true --> 1 = on
    bool = false --> 0 = off
    bool <visibility> <name> = !x --> not
    bool <visivility> <name> = variable1==variable2 --> if variable1 = variable2: true \\ else false
    bool <visivility> <name> = variable11!=variable2 --> if variable1 != variable2: true \\ else false
    bool <visivility> <name> = variable1||variable2 --> if variable1=true || variable2=true --> true \\ else false
    bool <visivility> <name> = variable1&&variable2 --> if variable1=true && variable2=true --> true \\ else false
}
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BOOLEAN { 
    int x = 1;
    bool public x = true;
    bool public y = false;
    bool public m = !x;
    bool public mm = x == y;
}