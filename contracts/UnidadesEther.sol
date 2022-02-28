// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract UnidadesEther {

    /**
     * Las transacciones son pagadas con ether.
     * Similar a como 1 dolar es equivalente a 100 centavos.
     * 1 ether es equivalente a 10**18 wei o 1 000 000 000 000 000 000 wei.
     * wei es la denominacion mas pequeña de un ether.
     */

    // Denominaciones oficiales de ether.
    // Expresadas con sus respectivos apodos.

    uint public oneWei = 1 wei;
    // 1 Wei es igual a 1
    bool public isOneWei = 1 wei == 1; // true

    uint public oneKwei = 1e3 wei;
    // 1 Kwei(babbage) es igual a 1000 wei
    bool public isOneKwei = 1e3 wei == 1000 wei; // true

    uint public oneMwei = 1e6 wei;
    // 1 Mwei(lovelace) es igual a 1 000 000 wei
    bool public isOneMwei = 1e6 wei == 1000000 wei; // true

    uint public oneGwei = 1e9 wei;
    // 1 Gwei(shannon) es igual a 1 000 000 000 wei
    bool public isOneGwei = 1e9 wei == 1000000000 wei; // true
    
    uint public oneTwei = 1e12 wei;
    // 1 Twei(szabo) es igual a 1 000 000 000 000  wei
    bool public isOneTwei = 1e12 wei == 1000000000000 wei; // true

    uint public onePwei = 1e15 wei;
    // 1 Pwei(finney) es igual a 1 000 000 000 000 000 wei
    bool public isOnePwei = 1e15 wei == 1000000000000000 wei; // true

    uint public oneEther = 1 ether;
    // 1 ether is equal to 10^18 wei
    bool public isOneEther = 1 ether == 1e18 wei; //true

}