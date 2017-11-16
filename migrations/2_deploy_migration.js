var myContract = artifacts.require("./PubsubContract.sol");

module.exports = function(deployer) {
  deployer.deploy(myContract);
};
