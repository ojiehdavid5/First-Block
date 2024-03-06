/// SPDX-License-Identifier: MIT


pragma solidity ^0.8.0;


contract Ownable{


        address owner;

        modifier onlyOwner(){
        require(msg.sender==owner,'must be owner');
        _;
    }


        constructor(string memory _secret)public{


        owner=msg.sender;


    }


}


contract SecretVault{
    string secret;


    constructor(string memory _secret)public{

        secret =_secret;
        super;



    }



        function getSecret()public view  onlyOwner returns(string memory){
        return secret;

    }



}



contract MyContract is Ownable{

        address secretVault;





    constructor(string memory _secret)public{




SecretVault _secretVault = new SecretVault(_secret);
SecretVault=address(_secretVault);

        super;



    }


            function getSecret()public view  onlyOwner returns(string memory){
        return SecretVault(secretVault).getSecret();

    }






}











contract HotelRoom{
    //////////Ether payment
    //Modifiers
    //visibility
    //Events
    //Enums



    //vacant 
    //occupy
    enum Statuses{Vacant,Occupied}



event Occupy(address _occupant,uint _value);

    Statuses public currentStatuses;



address payable public owner;

constructor(){
    owner=payable(msg.sender);
}


modifier  onlyWhileVacant{
        require(currentStatuses==Statuses.Vacant,'currently occupied');
        _;

}


modifier costs(uint _amount){

require(msg.value>= _amount ,'Not enough ether provided');
_;


}
    function book() public  payable onlyWhileVacant costs(2 ether) {

        //check price

        //check status

        currentStatuses=Statuses.Occupied;

        owner.transfer(msg.value);

(bool success, ) = owner.call{value: msg.value}("");

         require(success,'Transfer failed');



        emit Occupy(msg.sender, msg.value);


    }

}