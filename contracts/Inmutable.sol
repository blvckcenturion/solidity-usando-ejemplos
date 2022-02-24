// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Immutable {
    /*
        Las variables inmutables son similares a las constantes.
        Con una diferencia principal, las variables constantes no pueden ser asignadas después de su declaración.
        Sin embargo las variables inmutables pueden ser asignadas después de su declaración, unicamente haciendo uso del constructor.
        Solamente se puede realizar una asignacion a un valor en el constructor si la variable inmutable no tiene un valor inicial definido en su declaracion.
        Posterior a la asignación en el constructor, las variables inmutables no pueden ser modificadas.
    */

    // Son declaradas haciendo uso de la palabra clave 'constant' despues del tipo de dato (address, uint, etc) y su visibilidad (public, private, etc).
    // La convencion es que el nombre de la variable inmutable sea escrito en mayusculas y haciendo uso de guiones bajos (_) para separar las palabras.
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT = 0;

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint; //ERROR: No se puede asignar un valor debido a que la misma ya cuenta con un valor inicial especificado en su declaracion.
    }
}