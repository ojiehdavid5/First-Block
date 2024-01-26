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
    enum Statuses{Vacant,Occupied};



    event Occuppy(address _occupant,uint _value);


    Statuses currentStatuses;



address payable public owner;

constructor(){
    owner=msg.sender;
}


modifier  onlyWhileVacant{
        require(currentStatuses==Statuses.vacant,'currently occupied');

}


modifier costs(uint _amount){

require(msg.value>= _amount ,'Not enough ether provided');


}
    function book() payable onlyWhileVacant costs(2 ether) {

        //check price

        //check status

        currentStatuses=Statuses.Occupied

        owner.transfer(msg.value);
       (bool sent,bytes memory data)= owner.call{value:msg.value}("");
       require(true);

        emit Occupy(msg.sender, msg.value);


    }

}