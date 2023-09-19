// SPDX-License-Identifier: MIT

pragma solidity 0.8.21;

import {USDT} from "../src/USDT.sol";
import {Test, console} from "forge-std/Test.sol";
import {StdCheats} from "forge-std/StdCheats.sol";

contract USDTTest is StdCheats, Test {
    USDT usdt;

    function setUp() public {
        usdt = new USDT(address(this), 1000);
    }

    function testMintMoreThanZero() public {
        vm.prank(usdt.owner());
        usdt.mint(address(this), 10);
        assertEq(usdt.totalSupply(), 1010);

        //vm.stopPrank();
    }
}
