var myContract = artifacts.require("./PubContracts.sol");

module.exports = function(deployer) {
  deployer.deploy(myContract);
};
