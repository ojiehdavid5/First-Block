/// SPDX-License-Identifier: MIT


pragma solidity ^0.8.0;


contract HotelRoom{
    //////////Ether payment
    //Modifiers
    //visibility
    //Events
    //Enums



    //vacant 
    //occupy
    enum Statuses{Vacant,occupied};
    Statuses currentStatuses;



address payable public owner;

constructor(){
    owner=msg.sender;
}
    function book payable (){
        currentStatuses=Statuses.Occupied

        owner.transfer(msg.value);


    }

}