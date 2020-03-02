# TD5-Blockchain

TOKEN ERC20:
name:TD5TOKEN
symbol:TDT


Contracts:

ERC20 -> Main contract 

ICO contracts: 
     -WhiteList.sol -> list of people able to have TDT
     -Distribution.sol -> 10,5,1 the step of distribution, be quick :)
     -AirDrop.sol -> It's free you only have to run the function 
      airdrop(address):

	If you want to test this function add in the file: 2_deploy_contracts.js         (migrations folder):

        const AirDrop = artifacts.require("./AirDrop");
        deployer.deploy(AirDrop);

       and write in the command prompt : truffle migrate -reset