// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "../Orderbook.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Mock is ERC20 {
    constructor(
        string memory name_,
        string memory symbol_
    ) ERC20(name_, symbol_) {}

    function mintToken(address account, uint256 amount) external {
        _mint(account, amount);
    }
}
