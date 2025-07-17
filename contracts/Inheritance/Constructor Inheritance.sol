/*
Constructor Inheritance:
{
    1) DERIVED is BASE(number for contructor)
    2) like BASE2 & DERIVED2
}
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    contract BASE1 {
     uint public number;
        constructor(uint _number) {
           number = _number;
        }
    }
    contract DERIVED1 is BASE1(10) {

  }


    contract BASE2 {
        uint public age;
        constructor(uint _age) {
            age = _age;
        }
    }
    contract DERIVED2 is BASE2{
        constructor() BASE2(50) {

        }
    }

    