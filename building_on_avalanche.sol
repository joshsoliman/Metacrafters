// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    
    mapping(uint256 => uint256) public itemPrices;

    constructor(uint256 initialSupply) ERC20("Degen", "DGN") Ownable(msg.sender) {
        _mint(msg.sender, initialSupply);
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    function setItemPrice(uint256 itemId, uint256 price) external onlyOwner {
        itemPrices[itemId] = price;
    }

    function redeem(uint256 itemId) external {
        uint256 price = itemPrices[itemId];
        require(price > 0, "Item does not exist");
        require(balanceOf(msg.sender) >= price, "Insufficient token balance");

        _burn(msg.sender, price);
        
        emit ItemRedeemed(msg.sender, itemId, price);
    }

    event ItemRedeemed(address indexed user, uint256 indexed itemId, uint256 price);
}
