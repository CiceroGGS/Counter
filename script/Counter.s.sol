// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter public counter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);
        // address -> 0x9fE46736679d2D9a65F0992F2272dE9f3c7fa6e0
        // private-key -> 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
        counter = new Counter();

        counter.setNumber(40);

        console.log("Address", address(counter));

        vm.stopBroadcast();
    }
}
