// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleContract {
    string public contractName;
    uint public count;

    //constructor to initialize the contract
    constructor(string memory _name) {
        contractName = _name;
        count = 0;
    }

    //function to retrieve the contract name
    function getContractName() public view returns (string memory) {
        return contractName;
    }

    //function to increment the count
    function incrementCount() public {
        count += 1;
    }

    //function to retrieve the current count
    function getCount() public view returns (uint) {
        return count;
    }
}
