
//SPDX-License Identfier:MIT

pragma solidity ^0.8.0;



contract MyContract {

//Arrays

uint[] public uintArray=[1,2,3];

string[] public stringArray=["Apple","Banana","mango"];
string [] public values;


function addValue(string memory _value) public {
        values.push(_value);
    }



function valueCount( ) public view returns(uint){

return values.length;
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
}




