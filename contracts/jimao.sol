// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract JIMAO {
  constructor() { }

  // 事件声明
  event Log(string);
  event Log(uint);
  event Log(address);

  function usdc_balance()
  public returns(uint) {
    IERC20 usdc = IERC20(address(0xDaE6699babF67F803a82Bbb56c672A968f1baB02));
    address my_addr = address(this);
    uint balance = usdc.balanceOf(my_addr);
    emit Log(my_addr);
    emit Log(balance);
    return balance;
  }
}
