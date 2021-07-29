public class Oops {
    
    //Encapsulation
    
    protected integer NumOfInstances = 0; //Anything protected can only be accessed within the subclass
    //integer numOfProperties {get;set} //defaults properties
    public string bobsAd{get;set;}
    public integer numOfProperties {get;set{
        if(value > -1 & value < 101){
            numOfProperties = value;
        }
    }
    }
    
    private integer dingus; //Most restricted, can only be accessed from within the class
    
    public void CallMe(){
        integer num;
        if(true){
            integer bob = 2;
            numOfProperties = bob;
        }
    }
    
    public integer GetNumOfInstances(){
        return numofInstances;
    }
    
    public void SetNumOfInstances(integer i){
        if(i > -1 && i < 101){
            numOfInstances = i;
        }
    }

    
    //Abstraction
    
    //Inheritance
    
    //Polymorphism

}