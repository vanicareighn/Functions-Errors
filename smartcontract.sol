// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SmartContract {
    uint256 public value;

    function setValue(uint256 _newValue) external {
        require(_newValue >= 100 && _newValue <= 5000, "Value must be between 100 and 5000");
        value = _newValue;
    }

    function assertValue(uint256 _num) external pure returns (uint256) {
        assert(_num != 0);
        return _num;
    }

    function revertValue(uint256 _num) external pure returns (uint256) {
        if (_num == 0) {
            revert("Value cannot be zero, Try Again");
        }

        return _num;
    }
}
