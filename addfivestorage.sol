// SPDX-License-Identifier: MIT 
pragma solidity 0.8.30;

import "./simplestorage.sol";

contract addfivestorage is simplestorage{
   function store(uint256 _newnum) public override{
    myfavnumber = _newnum + 5;
   }
}
