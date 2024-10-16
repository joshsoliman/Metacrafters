// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables to store the token details
    string public tokenName = "MyToken";
    string public tokenAbbrv = "MTK";
    uint public totalSupply = 0;

    // Mapping to keep track of each address's balance
    mapping(address => uint) public balances;

    // Mint function to create tokens
    function mint(address _address, uint _value) public {
        totalSupply += _value;               // Increase the total supply
        balances[_address] += _value;        // Increase the balance of the specified address
    }

    // Burn function to destroy tokens
    function burn(address _address, uint _value) public {
        require(balances[_address] >= _value, "Insufficient balance to burn"); // Check if the address has enough tokens
        totalSupply -= _value;               // Decrease the total supply
        balances[_address] -= _value;        // Decrease the balance of the specified address
    }
}
