const ERC20 = artifacts.require("./ERC20");
//const MetaCoin = artifacts.require("ICO");


module.exports = function(deployer) {
  deployer.deploy(ERC20);
  //deployer.link(ERC20);
  //deployer.deploy(MetaCoin);
};
