// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SimpleStorage {

    /**
     *   Para realizar una escritura o una actualizacion a una variable de estado, es necesario enviar una transacción.
     *   Mientras que para realizar una lectura de una variable de estado, se puede hacer de forma gratuita, sin necesidad de pagar una tasa de transaccion.
     */ 

    // Variable de estado que almacena un número de tipo uint256.
    uint public num;

    // Esta funcion se encarga de asignar un nuevo valor a la variable 'num'.
    // Es necesario enviar una transaccion para escribir a una variable de estado.
    function set(uint _num) public {
        num = _num;
    }

    // Esta funcion se encarga de leer el valor de la variable 'num'.
    // Puedes realizar la lectura de una variable de estado, sin enviar una transacción.
    function get() public view returns (uint) {
        return num;
    }
}