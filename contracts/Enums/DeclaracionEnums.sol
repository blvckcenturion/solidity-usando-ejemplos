// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// Creando un enum que posteriormente sera utilizado por otros contratos.

enum Status {
    Pending,
    Shipped,
    Accepted,
    Rejected,
    Canceled
}
