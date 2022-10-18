// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract JIMAO {
  constructor() { }

  // 事件声明
  event Log(string);
  event Log(uint);

  mapping (address => bool) public minter;
  uint public counter = 0;

  function airdrop()
  public payable returns (uint) {
    require(minter[msg.sender] != true, "you have already received the airdrop");
    minter[msg.sender] = true;
    counter++;

    address USDC_address = 0x8d667268fA5e0832fa940e03E0297f034ece3f3c;
    ERC20 coin = ERC20(USDC_address);

    uint balance = coin.balanceOf(msg.sender);
    emit Log(balance);
    return balance;
  }

  function airdrop2()
  public payable returns (uint) {
    require(minter[msg.sender] != true, "you have already received the airdrop");
    minter[msg.sender] = true;
    counter++;

    address USDC_address = 0x8d667268fA5e0832fa940e03E0297f034ece3f3c;
    ERC20 coin = ERC20(USDC_address);

    uint balance = coin.balanceOf(msg.sender);
    // emit Log(balance);
    return balance;
  }

  function test()
  public pure returns (uint) {
    return 1234;
  }
}
