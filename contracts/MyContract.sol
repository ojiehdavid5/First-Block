
//SPDX-License Identfier:MIT

pragma solidity ^0.8.0;

import "hardhat/console.sol";
//Mapping

    mapping(uint=>books) public books;

mapping(uint=>string) names;

    struct books{
string title;
string author;


    }



constructor() public{

    names[1]='adams';
    names[2]='chuks';
    names[3]='gidi';


}

function addBooks(uint _id,string memory _title, string memory _author) public{
    books[_id] =Book(-title,_author);

}





contract MyContract{






}





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
}




