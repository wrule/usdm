// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract JIMAO {
  constructor() { }

  mapping (address => bool) public minter;
  uint public counter = 0;

  function airdrop()
  public payable returns (uint) {
    address USDC_address = 0x8d667268fA5e0832fa940e03E0297f034ece3f3c;
    IERC20 coin = IERC20(USDC_address);
    require(minter[msg.sender] != true, "you have already received the airdrop");
    minter[msg.sender] = true;
    counter++;
    return counter;
  }
}
