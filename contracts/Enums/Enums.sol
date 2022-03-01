// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Enums {

    /**
     * Solidity soporta el uso de enumeraciones, los cuales restringen una variable para que tenga uno de los valores predefinidos en la declaracion del mismo.
     * Los valores de esta lista son denominados enumeraciones, empezando por el valor 0 hasta la cantidad de elementos que contenga - 1.
     *
     * Los enumeradores pueden ser declarados fuera de un contrato y posteriormente ser importados en otro contrato.
     */

    // En este ejemplo haremos uso de un enumerador para representar los distintos estados de un envio.
    // Primeramente declaramos el enum y sus valores.
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }
    // Para hacer uso de el enumerador primero debemos declarar una variable de tipo Status(nombre del enum).
    // En este caso el valor por defecto para nuestro enumerador sera Pending(0) ya que es el primer valor de la lista.
    Status public status;

    /**
     * Retorna un uint que representa el valor del enumerador, que va desde el 0 hasta el numero de elementos del enum - 1, en este caso 4.
     * Pending(Pendiente)  - 0
     * Shipped(Enviado)    - 1
     * Accepted(Aceptado)  - 2
     * Rejected(Rechazado) - 3
     * Canceled(Cancelado) - 4
     */
    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into input
    // Podemos actualizar el estado pasando un uint como parametro.
    function set(Status _status) public {
        status = _status;
    }

    // Tambien se puede realizar una actualizacion a un estado especifico, como por ejemplo:
    function cancel() public {
        status = Status.Canceled;
    }

    // Se puede resetear el valor de nuestra variable status a el valor por defecto, que es Pending(0).
    function reset() public {
        delete status;
    }
}