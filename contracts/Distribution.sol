pragma solidity >=0.4.25 <0.7.0;

import "./Ownable.sol";

contract Distribution is Ownable{

    uint256 nb_client=0;
    uint256 amount;


   /**
   * Increase the number of owners.
   */
    function Increase() public onlyOwner{
        nb_client=nb_client+1;
    }

   /**
   * NumberClient return how many poeple have our Token
   */
    function NumberClient() public view returns(uint256){
        return nb_client;
    }

   /**
   * We give more token for the first owners. 
   * This amount decrease with the number of owner.  
   */

    function HowMany() public returns(uint256){
        if(nb_client<=4)
        {
            amount=10;
        }
        if(4<nb_client && nb_client<=6)
        {
            amount=5;
        }
        if(nb_client>6)
        {
            amount=1;
        }

        return amount;
    }
}