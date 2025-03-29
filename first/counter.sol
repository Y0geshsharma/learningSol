// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Counter {
    uint public counter;

    function increment() public {
        counter += 1;
    }
    function decrement() public {
        counter -= 1;
    }
}
