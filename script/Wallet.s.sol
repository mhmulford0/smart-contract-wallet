// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;
import "forge-std/Script.sol";
import "../src/Wallet.sol";

contract WalletScript is Script {
    function setUp() public {}

    function run() public {
        uint256 privKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(privKey);

        Wallet wallet = new Wallet();

        vm.stopBroadcast();
    }
}
