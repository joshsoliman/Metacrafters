// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.8.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.8.0/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor() ERC20("Josh", "Mint, Burn and Transfer") {}

   
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool success) {
        success = super.transfer(to, amount);
        return success;
    }
}
