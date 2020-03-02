pragma solidity >=0.4.25 <0.7.0;

import "./Ownable.sol";

contract WhiteList is Ownable{
    
    mapping(address => bool) whitelist;

    event AddedToWhitelist(address indexed account);
    event RemovedFromWhitelist(address indexed account);

    modifier onlyWhitelisted() {
        require(isWhitelisted(msg.sender));
        _;
    }

   /**
   * Add an address in the white list. 
   */

    function add(address _address) public  onlyOwner{
        whitelist[_address] = true;
        emit AddedToWhitelist(_address);
    }

   /**
   * Remove an address in the white list. 
   */

    function remove(address _address) public  onlyOwner{
        whitelist[_address] = false;
        emit RemovedFromWhitelist(_address);
    }


   /**
   * Check if an address is in the white list.
   */
    function isWhitelisted(address _address) public view returns(bool) {
        return whitelist[_address];
    }

}