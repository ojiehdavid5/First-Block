
//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;




contract Counter{
    //code for the smart contract goes here 
    uint  count;/// only positive integer

    constructor()public{
        count = 0;
    }
    function getCount() public view returns(uint){
        return count;
    }

    function incrementCount() public  returns(uint){
        count=count +1;
        return count;
    }
}