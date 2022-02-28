// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract IfElse {

    /*
        Solidity soporta el uso de secuencias condicionales if, else if y else.
        El if es una secuencia condicional que se ejecuta si la condición es verdadera.
        El else es una secuencia condicional que se ejecuta si la condición es falsa.
        El else if es una secuencia condicional que se ejecuta si la condición if es falsa y la condicion propuesta en if else es verdadera.
    */    

    // Si el valor argumento 'x' para la funcion foo es menor a 10, entonces el valor de salida de la funcion es 0.
    // Caso contrario, Si el valor argumento 'x' para la funcion foo es menor a 20, entonces el valor de salida de la funcion es 1. 
    // En ultimo caso el valor de salida de la funcion es 2, donde nuestro valor argumento 'x' es mayor a 20.
    function foo(uint x) public pure returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }


    
    function ternary(uint _x) public pure returns (uint) {  
        // if (_x < 10) {
        //     return 1;
        // }
        // return 2;

        // Haciendo uso de operadores ternarios, podemos simplificar la expresión condicional.
        // Este mismo toma 3 operandos, 
        // Primero es la condición seguida de un signo de interrogacion(?)
        // Segundo es el valor de retorno si la condición es verdadera, seguida de 2 puntos(:) 
        // Finalmente el tercero es el valor de retorno si la condición es falsa.

        // En este caso, la condicional es si el valor de '_x' es menor a 10.
        // En caso de ser verdadero, el valor de retorno es 1.
        // En caso de ser falso, el valor de retorno es 2.
        return _x < 10 ? 1 : 2;
    }
}