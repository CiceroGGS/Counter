// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    function test_Increment() public {
        counter.increment();
        assertEq(counter.getNumber(), 1);
    }

    function test_SetNumber(uint8 x) public {
        uint8 x = 9;
        counter.setNumber(x);
        assertEq(counter.getNumber(), x);
    }
}
