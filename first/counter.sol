// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract Counter {
    uint256 counter;

    function increment() public {
        counter += 1;
    }
    function decrement() public {
        if (counter > 0) {
            counter -= 1;
        }
    }
    function fetchCounter() public view returns (uint256) {
        return counter;
    }
}
