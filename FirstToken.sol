pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract FirstToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function FirstToken(address _owner)  UpgradeableToken(_owner) {
    name = "FirstToken";
    symbol = "ROH";
    totalSupply = 100000000000;
    decimals = 6;

    balances[_owner] = totalSupply;
  }
}