// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "./simplestorage.sol";



contract storagefac{
    simplestorage[] public mystorage;

    function createstoragecontract() public {
        simplestorage _mystorage = new simplestorage();
        mystorage.push(_mystorage);
    }

    function sfstore(uint256 _simplestorage, uint256 _newsimplestorage) public{
        simplestorage mysimplestorage = simplestorage(mystorage[_simplestorage]);
        mysimplestorage.store(_newsimplestorage);
    }
    function sfget(uint256 _simplestorage) public view returns(uint256){
         return mystorage[_simplestorage].retrieve();
    }
}
