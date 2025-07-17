/*
Error Handling:
{
    1)require --> A condition
    2)revert --> like require but for complex situation
    3)assert --> check changing value
}
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EH_Require {
    uint public age;
    function setage(uint _age) public {
        require(_age <= 120, "please entere correct age");
        age = _age;
    }
}

error invalidAge(uint sentAge, uint maxAge);
contract EH_Revert {
        uint maxAge;
    constructor(uint _maxValidAge) {
        maxAge = _maxValidAge;
    }

    function setAge(uint _age) public {
        if(_age >= maxAge)
        {
            revert invalidAge({
                sentAge: _age,
                maxAge: maxAge
            });
        }

        maxAge = _age;
    }
}

contract EH_Assert {
    uint public maxage = 100;
    uint public age;
    bool public live = true;

    function LiveORDeath(uint _age) public returns (bool) {
        age = _age;
        if(age >= maxage){
            live = false;
        }

        assert(live);
        return false;
    }
}
