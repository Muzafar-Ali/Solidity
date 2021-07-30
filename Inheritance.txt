pragma solidity 0.8.4;

contract Human{
    uint age;
    event logIt(string);
 
    constructor(){
    emit logIt(" 0 in Human Constructor");
    }
    
    function setAge(uint _age)public virtual{
        age =_age;
    }
    
    function getAge() public view returns(uint){
        return age;
    }
}

contract Student is Human{
    constructor(){
    emit logIt(" 1 in Student Constructor");
    }

        function setAge(uint _age)public override{
        age =_age;
    }

}

contract Teacher is Human{
    constructor(){
    emit logIt(" 2 in Teacher constructor");
    }
}

contract StudentTeacher is Human,Student,Teacher{
    constructor(){
    emit logIt(" 3 Derived Contract3 SUB");
    }
}

contract DemoObject{
    
    function retrunVar()public {
     StudentTeacher s = new StudentTeacher();
     s.setAge(30);
     s.getAge();
    
   }
}