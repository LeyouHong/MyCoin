var Migrations = artifacts.require("./MyCoin.sol");

module.exports = function(deployer) {
	deployer.deploy(Migrations);
};
