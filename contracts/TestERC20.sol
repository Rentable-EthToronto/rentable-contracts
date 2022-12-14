// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TestERC20 is ERC20 {
    constructor(string memory name_, string memory symbol_) ERC20( name_,symbol_) {
        mint(msg.sender, 100000000000000000000000000);
    }

    function mint(address account, uint256 amount) public virtual {
        _mint(account, amount);
    }
}
