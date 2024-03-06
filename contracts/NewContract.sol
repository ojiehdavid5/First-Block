

pragma solidity ^0.8.9;


contract MyContract {

    // Mapping
    mapping(uint => string) names;
    mapping(uint => Book) books;
    mapping(address => mapping(uint => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }

    constructor()  {
        names[1] = "adams";
        names[2] = "chuks";
        names[3] = "gidi";
    }

    function addBooks(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }



        function addmynBooks(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }

}















    // // State variables
    // uint256 public MyUint = 1;
    // int256 public myInt = 1;
    // uint8 public myUint8 = 1;

    // string public myString = "my first string";
    // bytes32 public myByte32 = bytes32("Helloworld");
    // address public myAddress = address(0x1234567890123456789012345678901234567890);

    // struct MyStruct {
    //     uint256 myUint256;
    //     string myString;
    // }

    // MyStruct public myStruct = MyStruct(1, "Helloworld");

    // // Local Variable
    // function getValue() public pure returns (uint256) {
    //     uint256 value = 0;
    //     return value;
    // }





