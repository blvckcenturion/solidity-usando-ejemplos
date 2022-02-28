// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Loops {

    /**
     * Un bucle(loop) en programacion es una instrucción que se repite hasta que se alcanza una condición específica.
     * Solidity permite definir bucles en tres formas distintas:
     *  - for
     *  - while
     *  - do while
     *
     * Se debe procurar evitar la declaracion de bucles infinitos, ya que esto puede ocasionar que la transaccion falle.
     * 
     * Por esta misma razon es que los ciclos while y do while sean poco utilizados.
     */

    function loop() public pure{
        /**
         * Declaracion de un bucle for
         * Donde se establece un valor inicial, la condicion de parada y el incremento de la variable.
         * En este caso se establece un valor inicial de 0 y la condicion de que el valor inicial sea menor a 10.
         * En cada iteracion se incrementa el valor inicial en 1.
         */ 
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                // Se puede hacer un salto a la siguiente iteracion del bucle haciendo uso de la palabra 'continue'
                continue;
            }
            if (i == 5) {
                // Se puede parar la ejecucion del bucle haciendo uso de la palabra 'break'
                break;
            }
        }

        /**
         * Declaracion de un bucle while
         * Donde se establece una condicion de parada.
         * En este caso se establece la condicion de que el valor de 'j' sea menor a 10.
         */
        uint j; // Declaracion de la variable 'j' con un valor inicial de 0.
        while (j < 10) {
            // Se incrementa el valor de 'j' en 1, de esta forma evitamos que el bucle se ejecute infinitamente.
            j++;
        }

        /**
         * Declaracion de un bucle do while
         * Donde se establece una condicion de parada.
         * En este caso se establece la condicion de que el valor de 'k' sea menor a 10.
         */
        uint k; // Declaracion de la variable 'k' con un valor inicial de 0.
        do {
            if (k == 8) {
                break;
            }
            k++;
        } while (k < 10);

    }
}