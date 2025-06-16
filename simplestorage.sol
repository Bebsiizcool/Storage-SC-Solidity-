// SPDX-License-Identifier: MIT 
pragma solidity 0.8.30;

contract simplestorage{
    uint256 myfavnumber;

     struct person{
          uint256 favnumber;
          string name;
     }

     // person public pat = person({favnumber: 7, name: "pat"});
     person[] public listofppl;
     mapping(string => uint256) public nametofavnumber;

   function store (uint256 _favnumber) public virtual {
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
