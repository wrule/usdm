const JIMAO = artifacts.require("JIMAO");
const USDC = artifacts.require("USDC");
const USDM = artifacts.require("USDM");

contract("JIMAO", async (accounts) => {
  const current_address = accounts[0];
  console.log(1234, current_address);
  const usdc = await USDC.deployed();
  const usdm = await USDM.deployed();
  console.log(usdc);
  const num = await usdc.balanceOf(current_address);
  console.log(num);
});
