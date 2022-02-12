// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Constantes {
    /*
        Las constantes en solidity son variables que no pueden modificar su valor despues de ser declaradas.
        Son declaradas haciendo uso de la palabra clave constant despues del tipo de dato (address, uint, etc) y su visibilidad (public, private, etc).
        La convencion es que el nombre de la constante sea escrito en mayusculas y haciendo uso de guiones bajos (_) para separar las palabras.
    */
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_UINT = 123;
}