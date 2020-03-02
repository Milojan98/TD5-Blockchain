pragma solidity >=0.4.25 <0.7.0;

/**
 * The Ownable contract has an owner address, and provides basic authorization control
 * functions, this simplifies the implementation of "user permissions".
 */
contract Ownable {

  address public owner;

  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

  /**
   * The Ownable constructor sets the original `owner` of the contract to the sender
   * account.
   */
  function ownable() public {
    owner = msg.sender;
  }


  /**
   *  Throws if called by any account other than the owner.
   */
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }


  /**
   * Allows the current owner to transfer control of the contract to a newOwner.
   * newOwner: The address to transfer ownership to.
   */
  function transferOwnership(address newOwner) public onlyOwner {
    require(newOwner != address(0));
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner;
  }

}