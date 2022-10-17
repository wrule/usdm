// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract JIMAO is ERC20 {
  constructor()
  ERC20("Jimao coin", "JIMAO") {
    _mint(msg.sender, 1e18 * 1e8);
  }

  mapping (address => bool) public minter;
  uint public counter = 0;

  function airdrop()
  public payable returns (uint) {
    require(minter[msg.sender] != true, "you have already received the airdrop");
    minter[msg.sender] = true;
    counter++;
    return counter;
  }
}
