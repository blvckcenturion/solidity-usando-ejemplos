// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// Para hacer uso del enum Status en el contrato debemos importarlo, haciendo uso de la palabra reservada 'import'
// seguida por la ubicacion relativa del archivo que contiene el enum
import "./DeclaracionEnums.sol";

contract ImportandoEnums {
    // Una vez realizada la importacion podemos hacer uso de Status.
    Status public status;

    constructor(){
        status = Status.Shipped;
    }

}