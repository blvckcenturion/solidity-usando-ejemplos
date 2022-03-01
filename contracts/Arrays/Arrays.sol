// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Arrays {
    /**
     * Una arreglo(array) es una coleccion de datos almacenados en ubicaciones de memoria consecutivas,
     * con una estructura de datos que permite acceder a cada uno de ellos haciendo uso de un indice(posicion del elemento empezando del 0).
     * 
     * En Solidity los arreglos pueden tener un longitud fija o variable y pueden almacenar cualquier tipo de dato.
     * sin embargo en Solidity un arreglo solamente puede almacenar valores del mismo tipo.
     */

    // Existen multiples formas para la declaracion de un arreglo.
    // Declaracion de un arreglo vacio de longitud dinamica.
    uint[] public arr;
    // Declaracion de un arreglo con 3 elementos de longitud dinamica.
    uint[] public arr2 = [1, 2, 3];
    // Declaracion de un arreglo de longitud fija de 10 elementos, inicializados con el valor por defecto, 0.
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        // Accediendo a un elemento del arreglo, donde i es el indice del elemento.
        return arr[i];
    }
    // Solidity permite devolver un arreglo entero de cualquier tipo de dato.
    // Pero esta funcionalidad deberia ser evadida en caso de hacer uso de arreglos de longitud dinamica.
    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        // Agregar un elemento al final del arreglo.
        // Incrementara la longitud del arreglo en 1.
        arr.push(i);
    }

    function pop() public {
        // Remover el ultimo elemento del arreglo.
        // Decrementara la longitud del arreglo en 1.
        arr.pop();
    }

    function getLength() public view returns (uint) {
        // Obtener la longitud del arreglo(cantidad de elementos almacenados).
        return arr.length;
    }

    function remove(uint index) public {
        // Eliminar un elemento del arreglo.
        // No decrementa la longitud del arreglo.
        // Simplemente resetea el valor para esa posicion.
        // En este caso 0, por que el arreglo es de tipo uint.
        delete arr[index];
    }

    function examples() external pure {
        // Ejemplo de creacion de un arreglo en memoria, solamente se puede declarar arreglos en memoria de longitud fija.
        uint[] memory a = new uint[](5);
    }
}

