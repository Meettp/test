pragma solidity  ^0.4.25; 

contract transferTo{
    
    function () external payable{
    }
    
    function getBalance() public returns (uint){
        return address(this).balance;
    }
}

contract transferFrom{
    
    transferTo public _object; 

    constructor() public {
        _object = new transferTo(); 
    }
    
    function getBalance() public returns(uint){
        return address(this).balance; 
    }   
    
    function getBalanceOfTo() public returns(uint){
        return _object.getBalance();
    }
    
    function() external payable{
        address(_object).send(msg.value);
    }
}