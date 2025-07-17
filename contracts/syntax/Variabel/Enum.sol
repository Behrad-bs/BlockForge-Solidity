/*
Enum:
{
    make variable that isn't exist in solidity
    enum <name> {
        variable1(name)
        variable2(name)
        ...
    }
    after that we can use that  variable
    variable1 <visibility> <name>;
    We can also set values:
    enum(name) <visibility> <name> = enum(name).variable1
}
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ENUMERATOR { 
    enum projectstatus {
        pending,
        ongoing,
        done,
        rejected
    }
    projectstatus public status1;
    projectstatus public status2 = projectstatus.done;
}