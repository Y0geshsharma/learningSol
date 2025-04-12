// variable that are available in the global scope

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract MyGlobalVariable {
    address public owner;
    address public _blockHash;
    address public origin;
    uint256 public difficulty;
    uint256 public gasLimit;
    uint256 public gasPrice;
    uint256 public number;
    uint256 public timestamp;
    uint256 public value;
    uint256 public nowOn;
    bytes public callData;
    bytes4 public firstFour;

    constructor() payable {
        _blockHash = block.coinbase;
        difficulty = block.prevrandao;
        gasLimit = block.gaslimit;
        number = block.number;
        timestamp = block.timestamp;
        gasPrice = tx.gasprice;
        origin = tx.origin;
        callData = msg.data;
        value = msg.value;
        owner = msg.sender;
        firstFour = msg.sig;
        nowOn = block.timestamp;
    }
}
