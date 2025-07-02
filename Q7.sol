/*
Design a smart contract that stores the following information for students: 
first name, last name, age, gender, and wallet address. Only the contract owner (administrator) is permitted to add student records. 
Whenever a new student is added to the system, an event must be emitted containing the student's first and last name. 
Additionally, individuals under the age of 18 shall not be considered eligible students and must not be registered.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Q7_first_way {
    address public owner;
    modifier OWNER {
        require(owner == 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        _;
    }
    constructor() {
        owner = msg.sender;
    }
    function INFORMATION(
    string memory name, 
    string memory lastname, 
    uint age, 
    string memory sex, 
    address WALLET) public OWNER view returns (string memory _name,
    string memory _lastname){
       require(age < 18);
        _name = name;
        _lastname = lastname;
    }
// very simpe :)
}

contract Q7_second_way {
    address owner;

    enum Sex {
        Male,
        Female
    }

    struct Student {
        string fname;
        string lname;
        uint age;
        address wallet;
        Sex sex;
    }

    Student[] public students;

    modifier onlyOwner {
        require(msg.sender == owner,"Only owner can do this");
        _;
    }

    event NewStudent(string fname, string lname);

    constructor() {
        owner = msg.sender;
    }

    function addStudent(
        string memory _fname, 
        string memory _lname,
        uint _age,
        address _Wallet,
        Sex _sex
        ) public onlyOwner {
            require(_age >= 18, "Minimmum age must be 18");
            students.push(Student({
                fname: _fname,
                lname: _lname,
                age: _age,
                wallet: _Wallet,
                sex: _sex
            }));

            emit NewStudent(_fname, _lname);
        }

    function showStudentInfo(uint _index) public view returns(Student memory) {
        return students[_index];
    }

    function showStudentsInfo() public view returns(Student[] memory) {
        return students;
    }
}