// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Variables {
    /* 
        Se considera variables de estado a todas aquellas que son declaradas afuera de una funcion.
        Las variables de estado son almacenadas en la blockchain.
    */
    string public text = "Hello";
    uint public num = 123;

    function doSomething() public view {
        /*
            Se considera variables locales a todas aquellas que son declaradas dentro de una funcion.
            Las variables locales no se guardan en la blockchain.
        */
        uint i = 456;

        /*
            Se considera variables globales a todas aquellas que existen de forma global.
            Estas son variables especiales que brindan información sobre la blockchain y las propiedades de la transacción.
        */
        uint timestamp = block.timestamp; // timestamp(record de la fecha y hora) del bloque actual
        address sender = msg.sender; // address del emisor de la transacción actual
    }
}
