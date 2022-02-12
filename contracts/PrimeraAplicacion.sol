// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Contador {
    uint public count;

    // Esta function nos permite obtener el valor actual de count
    function get() public view returns (uint) {
        return count;
    }

    // Esta function nos permite incrementar el valor de count en 1
    function inc() public {
        count++;
    }

    // Esta function nos permite decrementar el valor de count en 1
    function dec() public {
        count--;
    }
}