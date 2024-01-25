

/// SPDX-License-Identifier: MIT


pragma solidity ^0.8.0;

import "hardhat/console.sol";




contract MyContract{
    uint[] public  numbers =[1,2,3,4,5,6,7,8,9,10];
    address public owner;

    constructor (){
        owner = msg.sender;
    }

    function countEvenNumbers () public view returns(uint){
        uint count=0;
        for(uint i=0; i<numbers.length; i++){
            if(isNumberEven(numbers[i])){
                count++;
            }
        }
        return count;
    }
    
    function isNumberEven(uint _number) public pure returns(bool) {
        if( _number  % 2 == 0){
            return true;
        }else{
            return false;
        }
    }

    function isOwner() public view returns(bool) {
        return(msg.sender == owner);
    }
}




// contract MyContract {
//     // Mapping
//     mapping(uint => string) names;
//     mapping(uint => Book) books;
//     mapping(address => mapping(uint => Book)) public myBooks;

//     struct Book {
//         string title;
//         string author;
//     }

//     constructor()  {
//         names[1] = "adams";
//         names[2] = "chuks";
//         names[3] = "gidi";
//     }

//     function addBooks(uint _id, string memory _title, string memory _author) public {
//         books[_id] = Book(_title, _author);
//     }



//         function addmynBooks(uint _id, string memory _title, string memory _author) public {
//         myBooks[msg.sender][_id] = Book(_title, _author);
//     }

// }



// contract MyContract {

// //Arrays

// console.log('first log');

// uint[] public uintArray=[1,2,3];

// string[] public stringArray=["Apple","Banana","mango"];
// string [] public values;
// uint256[][] public array2D= [[1,2,3], [4,5,6] ];


// function addValue(string memory _value) public {
//         values.push(_value);
//     }



// function valueCount( ) public view returns(uint){

// return values.length;
// }


















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





