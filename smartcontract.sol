// SPDX-License-Identifier: MIT
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