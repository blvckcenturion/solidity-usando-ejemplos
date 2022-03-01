// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ArraysEliminarPorDesplazamiento {

    //Eliminar un elemento del arreglo, desplazando todos los elementos hacia la izquierda una posicion. 

    // [1, 2, 3] -- remove(1) --> [1, 3, 3] --> [1, 3]
    // [1, 2, 3, 4, 5, 6] -- remove(2) --> [1, 2, 4, 5, 6, 6] --> [1, 2, 4, 5, 6]
    // [1, 2, 3, 4, 5, 6] -- remove(0) --> [2, 3, 4, 5, 6, 6] --> [2, 3, 4, 5, 6]
    // [1] -- remove(0) --> [1] --> []

    uint[] public arr;
    
    // Funcion encargada de eliminar un elemento del arreglo
    function remove(uint _index) public {
        // Verificar que el indice sea menor a la longitud del arreglo.
        require(_index < arr.length, "index out of bound");

        // For loop para desplazar los elementos hacia la izquierda.
        // Desplazara todos los elementos hacia la izquierda una posicion, desde el indice indicado.
        for (uint i = _index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }
        // Remover el ultimo elemento del arreglo, decrementando la longitud del arreglo en 1.
        arr.pop();
    }

    function test() external {
        arr = [1, 2, 3, 4, 5];
        remove(2);
        // [1, 2, 4, 5]
        // Verificacion de que el arreglo se modifico de forma correcta.
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr.length == 4);
        
        arr = [1];
        remove(0);
        // []
        assert(arr.length == 0);
    }
}
