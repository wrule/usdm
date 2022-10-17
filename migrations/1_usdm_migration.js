const USDM = artifacts.require("USDM");

module.exports = (deployer) => {
  deployer.deploy(USDM, 1e20);
};
