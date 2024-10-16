// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    //public variables to store the token details
    string public tokenName = "META";
    string public tokenAbbrv = "MTA";
    uint public totalSupply = 0;

    //mapping to keep track of each address's balance
    mapping(address => uint) public balances;

    //mint function to create tokens
    function mint(address _address, uint _value) public {
        totalSupply += _value;               //increase the total supply
        balances[_address] += _value;        //increase the balance of the specified address
    }

    // Burn function to destroy tokens
    function burn(address _address, uint _value) public {
        if (balances[_address] >= _value) { //checks if the address has enough tokens
            totalSupply -= _value;               //decrease the total supply
            balances[_address] -= _value;        //decrease the balance of the specified address
        }
    }
}



