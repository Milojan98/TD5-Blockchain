pragma solidity >=0.4.25 <0.7.0;

import "./Ownable.sol";
import "./ERC20.sol";
import "./Distribution.sol";
import "./WhiteList.sol";

contract AirDrop is Ownable, Distribution,ERC20,WhiteList {
    
    ERC20 token;
   
   
   /**
   * We decide to give our token for free :)
   * Just call this function and we check at first if you have already take our token if not 
   * we send you some TD5Token.
   * Be quick! :)
   */

    function airdrop(address tokenAddress) public {
        require(balances[own]!=0);
        require(isWhitelisted(msg.sender)==false);
        uint256 amount=HowMany();
        token = ERC20(tokenAddress);
        token.transferFrom(own,msg.sender,amount);
        add(msg.sender);
        Increase();
    }

}