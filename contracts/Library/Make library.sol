/*
Make libarary --> make library that delet a cell of a array
{
    Using library:
    {
        1) Using <name> for variabletype --> line 25
        2) Line --> 33
    }
}
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library DCA {
    function removeITEM(uint[] storage elements, uint _index) public {
        for(uint  i=_index; i<elements.length-1; i++){
            elements[i] = elements[i+1];
        }
        elements.pop();
    } 
}

contract ARRAY { 
    //using DCA for uint[];
    uint[] public number;
    function adNUMBER() public {
        for(uint i=0; i<10; i++){
            number.push(i);
        }
    }
    function removeNUMBER(uint _index) public {
        DCA.removeITEM(number,_index);
    }
}