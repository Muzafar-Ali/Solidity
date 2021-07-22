pragma solidity ^0.8.0;

contract practcie{
    
    
    address public owner;
    bool    public paused;
    
    constructor(){
        owner = msg.sender;
    }
    
    modifier Pausing(){
        if ( owner == msg.sender){
            _;
        }
    }
    modifier forPausinf(){
        if(paused == false){
            _;
        }
    }
    
    function pauseIt(bool _testIt)public Pausing{
        paused = _testIt;
        
    }
    
    function sendMoneyToContarct()public payable{
        
    }
    
    function wihtdraw(address payable _account)public forPausinf{
        require(owner == msg.sender," You are not the owner");
            _account.transfer(address(this).balance);
        
    }
    
}