//SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract TechTwt is ERC20{
    // We will set the name and symbol, while deploying.
    constructor(string memory _name, string memory _symbol) ERC20(_name,_symbol){
        _mint(msg.sender,20*10**18); // This ensures we get 20 tokens of our currency
    }
}