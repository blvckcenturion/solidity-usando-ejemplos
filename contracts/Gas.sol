// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Gas {

    /*
        
        ¿Que es el gas?
        Se refiere a la unidad de medida para la cantidad de esfuerzo computacional requerido para ejecutar las operaciones de una transaccion.

        ¿Por que existe el gas?
        El gas ayuda a mantener segura la red, al exigir una tarifa por cada calculo ejecutado, evitamos que actores malintencionados enviem spam a la red.
        Es una forma de prevension para evitar bucles infinitos accidentales u hostiles en la red como el ejemplo propuesto en la funcion 'forever'

        ¿Cuanto gas es necesario pagar por una transaccion?

        La cantidad de ether a pagar por una transaccion es calculada de la siguiente manera:
        (gas utilizado) * (precio del gas) expresado en ether
        
        - gas utilizado: es la cantidad de gas que se utiliza para ejecutar una transaccion.
        - precio del gas: es la cantidad de ether estas diespuesto a pagar por unidad de gas.

        Las transacciones que tienen un precio de gas mas alto tienen prioridad en la cola de transacciones para ser agregadas a un bloque.
        Por lo tanto, si una transaccion tiene un precio de gas mas alto, se ejecutara antes de otras transacciones que tienen un precio de gas mas bajo.

        El gas que no es utilizado por una transaccion es devuelto al individuo que realizo la transaccion.

        En el caso de que la transaccion falle, el gas utilizado no sera devuelto.

        Limites de gas
        Existen 2 limites para la cantidad de gas que se puede gastar en una transaccion.
        - Limite de gas: La cantidad maxima de gas que el usuario esta dispuesto a usar para su transaccion.
        - Limite de gas por bloque: La cantidad maxima de gas permitida en un bloque, establecido por la red.
        
    */

    uint public i = 0;
    // El hacer uso de todo el gas enviado en una transaccion ocasiona que la misma falle.
    // Todos los cambios realizados en estado son revertidos.
    // El gas utilizado no sera devuelto.
    function forever() public {

        // En este caso tenemos un loop infinito que terminaara cuando todo el gas sea utilizado.
        // Y la transaccion falla.
        while (true) {
            i += 1;
        }
    }
}