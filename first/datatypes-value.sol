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
    int8 public iNegativeIntType = -1; //negative number

    // Min max
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    // bytes
    bytes1 defaultBytes;
    bytes2 assignedBytes = 0xdf34; /// Bytes is 0,1 * size of the byte also it supports till (0- 16)0000, ffff
    // address
    address public defaultAddress; // 0x0000000000000000000000000000000000000000
    address public assignedAddress = 0x4a9C121080f6D9250Fc0143f41B595fD172E31bf;
}
