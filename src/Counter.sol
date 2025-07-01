// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Counter {
    uint8 private number;

    function increment() public {
        number++;
    }

    function setNumber(uint8 newNumber) public {
        number = newNumber;
    }

    function getNumber() public view returns (uint8) {
        return number;
    }
}
