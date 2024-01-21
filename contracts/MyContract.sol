//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;



contract MyContract{
//State variable
uint MyUint =1;

int256 public myInt=1;
uint256  public MyUint =1;
uint8  public MyUint =1;

string public myString="my first string";
byte32 public myByte32="Helloworld";
address public myAddress=bgth0987654321234567890098765434567;
struct  myStruct{
uint256 myUint256
string myString;

}

MyStruct public myStruct=MyStruct(1,'Helloworld');
//Local Variable

function getValue() public public pure returns(uint){
    uint value =0;
    return value;
}

}