/*
Recive & fallbacl:
{
    1) recive --> for transferm money
    2) fallback --> to recive a msg
}
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Fallback_Receive {
    event Log(string Func, uint Val);

    fallback() external payable { 
        emit Log("fallback", msg.value);
    }
    receive() external payable {
        emit Log("receive", msg.value);
    }
}

contract Fallback_with_bytes {
    event Log(string Func, uint Val);
    fallback(bytes calldata data) external payable returns (bytes memory) { 
        (bool success, bytes memory retData) = address(this).call(data);
        require(success);
        return retData;
    }
    function makeSum() public returns (uint sum) {
        sum = 2 + 3;
        emit Log("makeSum", sum);
    }

    function getData() external view returns (bytes memory) {
        return abi.encodeCall(this.makeSum, ());
    }

    receive() external payable { }
}