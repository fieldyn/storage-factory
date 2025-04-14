// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // stating our solidity version

contract SimpleStorage {
    uint256 myfavoriteNumber; // 0

    //uint256[] listOfFavoriteNumber; // [0, 78, 90]

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Person public pat = Person({favoriteNumber: 7, name: "Pat" });

    Person[] public listOfPeople; // []

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myfavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) { // views are read only so no
        return myfavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person({ favoriteNumber: _favoriteNumber, name: _name})); // adding a new person to the list of people
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

