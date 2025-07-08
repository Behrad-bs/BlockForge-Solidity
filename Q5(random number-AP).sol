/*
Write a smart contract that uses a library to generate and utilize a random number within itself.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library RANDOMNUM {
       function rand(uint seed) public pure returns (uint) {
        bytes32 data;
        if (seed % 2 == 0){
            data = keccak256(abi.encode(seed));
        } else {
            data = keccak256(abi.encode(keccak256(abi.encode(seed))));
        }
        uint sum;
        for(uint i; i < 32; i++) {
            sum += uint(uint8(data[i]));
        }
        return uint(uint8(data[sum % data.length])) * uint(uint8(data[(sum + 2) % data.length]));
    }
    
    /** 
     * @dev Generate random uint <= 256^2 with seed = block.timestamp
     * @return uint
     */
    function randint() public view returns(uint) {
        return rand(block.timestamp);
    }
    
    /**
     * @dev Generate random uint in range [a, b]
     * @return uint
     */
    function randrange(uint[2] storage, uint a, uint b) public view returns(uint) {
        return a + (randint() % b);
    }
}


contract Use_Random {
    using RANDOMNUM for uint256[2];
    uint256[2] randomRange;

    function showRandomNumBetween(uint256 startRange, uint256 endRange) public view returns (uint256 randomNum) {
        return randomRange.randrange(startRange, endRange);
    }
}
