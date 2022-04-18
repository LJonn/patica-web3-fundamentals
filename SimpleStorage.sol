// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStorage {
    //init to 0
    uint256 favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public persons;
    mapping(string => uint256) public nameToFavNum;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(uint256 _favoriteNumber, string memory _name) public {
        persons.push(People(_favoriteNumber, _name));
        nameToFavNum[_name] = _favoriteNumber;
    }

    function showArraySize() public view returns(uint256){
        return persons.length;
    }
}