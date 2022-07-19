// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/accessors/SimulateTxAccessor.sol";
import "../src/proxies/GnosisSafeProxyFactory.sol";
import "../src/handler/DefaultCallbackHandler.sol";
import "../src/handler/CompatibilityFallbackHandler.sol";
import "../src/libraries/CreateCall.sol";
import "../src/libraries/MultiSend.sol";
import "../src/libraries/MultiSendCallOnly.sol";
import "../src/libraries/SignMessageLib.sol";

contract SafeContractDeployment is Script {

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        // accessor
        new SimulateTxAccessor();

        // handlers
        new DefaultCallbackHandler();
        new CompatibilityFallbackHandler();

        // libraries
        new CreateCall();
        new MultiSend();
        new MultiSendCallOnly();
        new SignMessageLib();

        // factory
        GnosisSafeProxyFactory f = new GnosisSafeProxyFactory();
        console.log("factory", address(f));

        // singleton
        GnosisSafe s = new GnosisSafe();
        console.log("singleton", address(s));

        vm.stopBroadcast();
    }
}
