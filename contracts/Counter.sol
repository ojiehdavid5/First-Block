
//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;




contract Counter{
    //code for the smart contract goes here 
    uint   public count =0;/// only positive integer


    function incrementCount() public  returns(uint){
        count++;
        return count;
    }
}