module.exports = async (callback) => {
  // TODO: implement your actions
  console.log('你好，世界');
  const address = await web3.eth.getAccounts();
  console.log(address);
  const balance = await web3.eth.getBalance('0x07781985Ba06afFab5Aa7489B646A7A3A33267Fa');
  console.log(balance);
  // invoke callback
  callback();
}
