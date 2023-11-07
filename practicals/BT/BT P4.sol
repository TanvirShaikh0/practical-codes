pragma solidity ^0.8.0;

contract plus{
    struct Student {
        uint256 studentId;
        string name;
        uint256 age;
    }
    Student[] public students;

    function addStudent(uint256 _studentId, string memory _name, uint256 _age) public {
        Student memory newStudent = Student(_studentId, _name, _age);
        students.push(newStudent);
    }

    function getNumberOfStudents() public view returns (uint256) {
        return students.length;
    }
    receive() external payable {}

    fallback() external {
        revert("This contract does not accept Ether directly.");
    }
}