// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract USDM is ERC20 {
  constructor()
  ERC20("USD Jimao", "USDM") {
    _mint(msg.sender, 1e20);
  }
}
