// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract ViewKeyWord {
    uint a = 1;
    uint b = 2;

    // using view keyword to readonly the state var otherwise you won't be able access state var unless you change the variable
    // function functionName() public view returns(datatype1,datatype2,...)
    function returnStateVar() public view returns (uint, uint) {
        return (a, b);
    }
    function returnResultVar() public view returns (uint product, uint total) {
        product = a * b;
        total = a + b;
    }
    function changeStateVariable() public returns (uint product, uint total) {
        a = 4;
        b = 6;
        product = a * b;
        total = a + b;
    }
}
