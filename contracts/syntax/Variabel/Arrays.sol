/*
Array:
{
    1)Fixed-sized array:
    {
        The number of memory locations is known.
        Initialization:
        <name>[slot number] = value
    }

    2)Dynamically-sized array:
    {
        The number of memory locations is nknown.
        Initialization:
        <name>.push(value);

        Delet slot:
        <name>.pop(); --> It removes the last element
        delet <name>[slot number]; --> It sets a selected element’s value to 0

        Array length:
        <name>.length;
    }
}
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ARRAY {
    uint[5] public ages = [1,2,3,4,5];
    uint[] public ages2 = [20,30,40,50,15];
}