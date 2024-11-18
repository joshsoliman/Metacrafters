// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ConditionsExample {
    uint256 public totalBalance;

    // Function to deposit balance //require() function
    function deposit(uint256 amount) public {
        require(amount > 0, "Deposit amount must be greater than 0");
        totalBalance += amount;
    }

    // Function to withdraw balance //assert() function
    function withdraw(uint256 amount) public {
        require(amount <= totalBalance, "Insufficient balance");
        totalBalance -= amount;

        // Assert to check that balance remains non-negative
        assert(totalBalance >= 0);
    }

    // Example of revert for custom error handling //revert
    function customError(uint256 value) public pure {
        if (value < 10) {
            revert("Value must be 10 or higher");
        }
    }
}
