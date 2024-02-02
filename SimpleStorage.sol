// Your first line in SimpleStorage.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

//Boolean: Represents true or false value.
//Uint: Uncapped positive whole number (An unsigned integer).
//Integer: It could be positive or negative. (Whole numbers only, no fractions or decimals).
//Address: A unique identifier similar to our everyday address.
//Bytes: A set of bytes (a lower-level type that could be a string in hexadecimal representation).
// unit256 default value= 0 
//In Solidity, functions and variables can have one of four visibility specifiers:
  //public - can be visible internal + external 
  //private- can be accessed by cureent contract. restricts access but dont hide 
  //external- only visible external cant be accessible internal 
  //internal- only by current contract and any inherit from it 
//view- read state ( no modify)
//pure- disallow reading, state or storage, modification 
//view and pure doesnt require gas, they do require gas when called by another function that modifies state/storage through a transaction.
//Array starts from 0,1,2,3.. 
//Solidity allows data to be stored in 6 locations:
   //Stack(call data), Memory, Storage, Calldata, Code ,Logs
   // calldata + memory = temporary 
   //calldata read only
   //Storage= permanent; Variable declared outside any Func = storage 
   //Data location can only be specified for array, struct, or mapping type
//mapping = link data 
