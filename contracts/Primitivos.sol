// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Primitivos {
    /*
        bool significa tipo booleano y se utiliza para almacenar un valor verdadero(true) o falso(false)
    */
    bool public boo = true;

    /*
    uint significa tipo entero sin signo y se utiliza para almacenar valores enteros sin signo, lo que significa enteros no negativos
    Estan disponibles en distintos tamaños en incrementos de 8 bits.
        - uint8 va desde 0 hasta 2 ** 8 - 1
        - uint16 va desde 0 hasta 2 ** 16 - 1
        ...
        - uint256 va desde 0 hasta 2 ** 256 - 1
    */
    uint8 public u8 = 1;
    uint public u256 = 456;
    uint public u = 123; // uint es un alias para uint256

    // Valores maximos y minimos de uint
    uint public minUint = type(uint).min;
    uint public maxUint = type(uint).max;

    /*
    Valores negativos son permitidos para los tipos int
    Como uint, estan disponibles en distintos tamaños desde int8 hasta int256
        - int256 va desde -2 ** 255 hasta 2 ** 255 - 1
        - int128 va desde -2 ** 127 hasta 2 ** 127 - 1
    */
    int8 public i8 = -1;
    int public i256 = 456;
    int public i = -123; // el rango de valores de int es el mismo que de int256

    // Valores maximos y minimos de int
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    /*
    address significa tipo de direccion y se utiliza para almacenar la direccion de cualquier cuenta
    Cada cuenta y contrato inteligente tiene una dirección y se almacena como valores de 20 bytes
    address cuenta con 2 variaciones en la que se puede utilizar:
        - address: se utiliza para cuentas que no pueden recibir ether
        - address payable: se utiliza para cuentas que pueden recibir ether y cuenta con 2 miembros adicionales, transfer y send
    */
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;
    address payable addrPayable = payable(0x95a647B3d8a3F11176BAdB799b9499C671fa243a); // Se debe hacer uso de payable() para poder definir un address payable realizando una conversion de address a address payable
    // se puede obtener el balance de una cuenta utilizando el miembro balance el cual retorna el balance de la cuenta en wei (1 ether = 10^18 wei)
    uint256 public addrBalance = addrPayable.balance; 
    // se puede obtener el codigo del contrato en formato bytecode almacenado en cuenta utilizando el miembro code (puede estar vacio en caso de ser una cuenta que no almacena un contrato)
    bytes public addrCode = addr.code; 

    /*
    En solidity, el tipo bytes representa una cadena de bytes y se utiliza para almacenar cadenas de bytes
    Solidity presenta 2 tipos de bytes:
     - arreglos de bytes con un tamaño fijo que va desde bytes1 representando 1 byte hasta bytes32 representando 32 bytes en incrementos de 1 byte
     - arreglo de bytes con un tamaño variable
    El termino bytes en Solidity representa un arreglo de bytes con un tamaño variable
    Es una abreviatura para byte[]
    */
    bytes1 a = 0xb5; //  [10110101] (1 byte)
    bytes1 b = 0x56; //  [01010110] (1 byte)

    // Valores por defecto
    // Las variables sin asignar tienen un valor por defecto
    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
    bytes1 public defaultBytes1; // 0x00
}