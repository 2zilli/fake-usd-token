// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/FakeUSDToken.sol";

contract DeployFakeUSDToken is Script {
    function run() external {
        vm.startBroadcast();

        // Deploy the FakeUSDToken contract
        new FakeUSDToken();

        vm.stopBroadcast();
    }
}
