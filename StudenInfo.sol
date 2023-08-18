//SPDX-License-Identifier:MIT
pragma solidity ^0.8.8 .0;

contract NewContract {
    struct Storage {
        uint age;
        string name;
        string favouriteFood;
    }

    mapping(address => Storage) public studentInfo;

    function myInfo(
        address _user,
        uint _age,
        string memory _name,
        string memory _favouriteFood
    ) public {
        Storage storage studentInformation = studentInfo[_user];
        studentInformation.age = _age;
        studentInformation.name = _name;
        studentInformation.favouriteFood = _favouriteFood;
    }
}
