import Web3 from 'web3';
declare var web3: Web3;

export default
async function main(callback: Function) {
  console.log('TypeScript脚本');
  const accounts = await web3.eth.getAccounts();
  console.log(accounts);
  const balance = await web3.eth.getBalance(accounts[0]);
  console.log(balance);
  callback();
}
