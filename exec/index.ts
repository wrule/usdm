import Web3 from 'web3';
import { AbiItem } from 'web3-utils'
declare var web3: Web3;

import USDC from '../build/contracts/USDC.json';
const USDC_address = '0xDaE6699babF67F803a82Bbb56c672A968f1baB02';
const USDM_address = '0x8c3a5dE5f5aC9E781A4eD82537B08eDc6C03a6b2';

export default
async function main(callback: Function) {
  console.log('TypeScript脚本');
  const accounts = await web3.eth.getAccounts();
  console.log(accounts);
  const balance = await web3.eth.getBalance(accounts[0]);
  console.log('ETH额度', balance);
  const jimao = new web3.eth.Contract(USDC.abi as AbiItem[], USDC_address);
  const usdc_balance = await jimao.methods.balanceOf(accounts[0]).call();
  console.log('USDC额度', usdc_balance);
  callback();
}
