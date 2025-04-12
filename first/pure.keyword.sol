// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract PureKeyWord {
    uint var1 = 10;
    uint var2 = 20;

    // function functionName() public pure returns(datatype1,datatype2,...){
    // return(var1,var2)
    // }
    // pure keyword will be only local variable
    function functionName() public pure returns (uint product, uint total) {
        uint a = 2;
        uint b = 2;
        product = a * b;
        total = a + b;
    }
}
