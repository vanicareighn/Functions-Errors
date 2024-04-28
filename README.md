# Functions-Errors
ETH Intermediate Module 1: Functions and Errors- this smart contract program demonstrating the assert and revert functions and also the require statements.

## Description


The Smart Contract is made to handle a single value on Ethereum. It allows only the owner to change this value, ensuring security. The code demonstrates good error handling practices using different statements to protect data and avoid mistakes. This also handles one value securely, allowing only the owner to change it. By using require, assert, and revert statements to ensure it's reliabilty and without an error handling. This contract provides useful lessons in building safe and reliable smart contracts for decentralized transactions.

## Executing the program

The first requirement to run this program is to use Remix Ethereum IDE (https://remix.ethereum.org/) and create a new files and take note that ".sol" is the correct file format for running a Solidity Program

This code demonstrates the usage of require to validate input conditions, assert to verify assumptions, and revert to revert transactions with custom error messages. Through Remix Ethereum IDE, you can experiment with these functions and gain insights into their behavior in Solidity smart contracts. To test the contract, interact with the setValue function using different input values to see how the require function validates conditions. Also, try calling the assertExample and revertExample functions with various inputs to understand how assert verifies assumptions and revert handles transactions with custom error messages. Through these interactions, you can explore the functionality of the require, assert, and revert functions in the contract.

``` // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SmartContract {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint256 _newValue) external {
        require(msg.sender == owner, "Caller is not the owner");
        require(_newValue != 0, "New value cannot be zero");
        value = _newValue;
    }

    function assertExample(uint256 _num) external pure returns (uint256) {
        assert(_num != 0);
        return _num;
    }

    function revertExample(uint256 _num) external pure returns (uint256) {
        if (_num == 0) {
            revert("Number cannot be zero");
        }

        return _num;
    }
}

## Additional Information

Student Info and Email address

Flores, John Nico M.
National Teachers College - BSIT 3.4
422003560@ntc.edu.ph
