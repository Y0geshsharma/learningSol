// bool - default = false
// int -> int and uint()- non negative numbers
//  default of uint is uint256
//  uint8 -> range ->0 to 2^8-1 (the range will be what ever number that at the end of unit -1)
//  Int - > default is int256(-2^255 to 2^255-1)
//  -
// fixed point numbers
// address
// bytes & string
// Enums


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract UsingDataType {
    // Bool
    bool public defaultBool;
    bool public assignedBool = true;

    // uint
    uint public defaultUint = 1232;
    uint8 public uint8Assigned = 12;
    uint256 public uint256Assigned = 2321;
    // int
    int public defaultIntType = 256; //positive number
    int8 public negativeIntType = -1; //negative number
}