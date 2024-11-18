
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {
    uint256 public value;

    // Function to set a value greater than zero
    function setValue(uint256 _value) public {
        // Validate input with require
        require(_value > 0, "Value must be greater than zero");

        // Ensure no duplicate values with assert
        assert(value != _value);

        // Set the value
        value = _value;
    }

    // Function to reset the value to zero
    function resetValue() public {
        // Check if value is already zero and revert if so
        if (value == 0) {
            revert("Value is already zero");
        }
        value = 0;
    }
}
