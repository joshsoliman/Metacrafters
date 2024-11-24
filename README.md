JOSH Token

This Solidity program implements a basic token smart contract called JOSH. It demonstrates fundamental concepts of Solidity such as state variables, mappings, and functions. This project serves as a starting point for understanding how to create and manage tokens on the Ethereum blockchain.

Description

The JOSH Token contract is a simple implementation of a token system with the following features:

Minting: Allows tokens to be created and assigned to a specific address.
Burning: Allows tokens to be destroyed, reducing the total supply.
Balances: Keeps track of each address's token holdings.
This program is ideal for developers who are new to Solidity and want to learn about token creation and management. It can also serve as a foundation for more advanced token contracts, such as those adhering to the ERC-20 standard.

Getting Started

Prerequisites
To run this program, you need:

Access to Remix, an online Solidity IDE.
Basic knowledge of Solidity and smart contract deployment.
Executing the Program
Step 1: Create a New File

Open Remix.
Create a new file by clicking the "+" icon in the left-hand sidebar.
Name the file (e.g., token.sol).

Step 2: Copy the Code

Paste the following code into your new file:

    // SPDX-License-Identifier: MIT
    pragma solidity 0.8.18;

    contract MyToken {

        // Public variables for token details
        string public tokenName = "JOSH";
        string public tokenAbbrv = "SOLIMAN";
        uint public totalSupply = 0;
    
        // Mapping to store balances
        mapping(address => uint) public balances;
    
        // Owner address
        address public owner;
    
        // Events
        event Mint(address indexed to, uint value);
        event Burn(address indexed from, uint value);
    
        // Constructor
        constructor() {
            owner = msg.sender; // Set deployer as owner
        }
    
        // Modifier for owner-only functions
        modifier onlyOwner() {
            require(msg.sender == owner, "Only the owner can perform this action");
            _;
        }
    
        // Mint function
        function mint(address _address, uint _value) public onlyOwner {
            totalSupply += _value;               
            balances[_address] += _value;
            emit Mint(_address, _value);        
        }
    
        // Burn function
        function burn(address _address, uint _value) public onlyOwner {
            require(balances[_address] >= _value, "Insufficient balance to burn");
            totalSupply -= _value;
            balances[_address] -= _value;
            emit Burn(_address, _value);
        }
    }

Step 3: Compile the Contract

Click on the Solidity Compiler tab in the left-hand sidebar.
Set the "Compiler" option to 0.8.18 or a compatible version.
Click on the Compile MyToken.sol button.

Step 4: Deploy the Contract

Navigate to the Deploy & Run Transactions tab in the left-hand sidebar.
Select the MyToken contract from the dropdown menu.
Click on the Deploy button.
Step 5: Interact with the Contract

Mint Tokens:
Call the mint function with an address and a value to create tokens.
Burn Tokens:
Call the burn function with an address and a value to destroy tokens.
Check Balances:
Use the balances mapping to view the token balance of any address.
View Total Supply:
Access the totalSupply variable to see the total tokens in circulation.
