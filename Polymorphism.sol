pragma solidity^ 0.8.0;

contract A{
    uint age; 

    function setAge(uint _age)public{
        age = _age;
    }
    
    function returnInteger()public pure returns(int){
        return 525;
    }
    
}

contract B is A {
    
    function returnInteger(int _a)public pure returns(int){
        return _a;
    }
}

contract demoOb{
    
    A varInt = new B();
    
    function dosm()public view returns(int){
        return varInt.returnInteger();
    }
    
}
