// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract JIMAO {
  constructor() { }

  // 事件声明
  event Log(string);
  event Log(uint);

  function usdc_balance()
  public pure returns(uint) {
    return 6721;
  }
}
