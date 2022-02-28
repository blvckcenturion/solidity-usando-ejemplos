// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Mapping {

    /**
     * Los mapeos(mappings) son utilizados para almacenar los datos en forma de pares clave-valor.
     * Se crean utilizando la sintaxis: mapping(tipoDeLaClave => tipoDelValor) visibilidadMapeo nombreMapeo
     * La llave puede ser cualquier tipo integrado + bytes y strings. No se permiten tipos de referencia ni objetos complejos.
     * El valor puede ser cualquier tipo de dato, incluidos los mappings, de esta forma creamos mapeos anidados.
     * en Solidity actuan como una tabla hash o diccionario en cualquier otro lenguaje.
     * Los mapeos no son iterables.
     */

    // Declaracion de un mapeo donde la llave es de tipo address y el valor es de tipo uint256.
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        // Mediante la llave se obtiene el valor.
        // En este caso el parametro _addr es una llave que apunta a un valor.
        // Los mapeos siempre retornan un valor.
        // Si el mapeo no tiene un valor para la llave, retorna el valor por defecto, en este caso 0.
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        // Se asigna un valor a una llave.
        // Si la llave no existe, se crea.
        // Si la llave existe, se reemplaza.
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // De esta forma podemos resetear el valor de una llave al valor por defecto, 0.
        delete myMap[_addr];
    }
}

contract NestedMapping {
    // Declaracion de un mapeo anidado donde la llave es de tipo address y el valor es de tipo mapping (uint => bool).
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _i) public view returns (bool) {
        // De igual forma se pueden obtener los valores del mapeo anidado.
        return nested[_addr1][_i];
    }

    function set(
        address _addr1,
        uint _i,
        bool _boo
    ) public {
        // Asi tambien como realizar operaciones sobre los valores del mapeo anidado.
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint _i) public {
        // De esta forma podemos resetear el valor de una llave al valor por defecto, false.
        delete nested[_addr1][_i];
    }
}