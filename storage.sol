// SPDX-License-Identifier: MIT 
pragma solidity ^0.7.4;

contract sstorage{
    uint256 myfavnumber;

     struct person{
          uint256 favnumber;
          string name;
     }

     // person public pat = person({favnumber: 7, name: "pat"});
     person[] public listofppl;
     mapping(string => uint256) public nametofavnumber;

   function store (uint256 _favnumber) public{
    myfavnumber = _favnumber;
   }

   function retrieve() public view returns(uint256){
        return myfavnumber;
   }

   function addperson(string memory _name, uint256 _favnumber) public{
     listofppl.push( person(_favnumber, _name));
     nametofavnumber[_name] = _favnumber;
   }
}