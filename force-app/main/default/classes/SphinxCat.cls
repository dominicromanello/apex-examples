/*
//////////////////////////////////////////////////////////////////////////////////
//
// Name: SphinxCat
// Author: Dominic Romanello(dominic.romanello@revature.net)
// Created: 7/8/21
// Last Modified: 7/9/21
// Description:
// 
/////////////////////////////////////////////////////////////////////////////////
*/

public class SphinxCat extends FelisCatus implements Predator, Pet {
    
    string name;
    integer hunger {get;set;}
    string noise;
    final string noise2;
    
    public SphinxCat(){
        this('bob');
    }
    
    public SphinxCat(string name){
        this(name, 5);
    }
    
    public SphinxCat(integer hunger){
        this('Bob', hunger);
    }
    
    public SphinxCat(string name, integer hunter){
        this.hunger = hunger;
        GiveName(name);
    }
    
	// Hunts prey
    public void Hunt(){
        system.debug('Stalks');
            if(Pounce()){
                hunger +=3;
            }else {
                hunger--;
                if(mortality() != true){
                    system.debug(name + ' has died of starvation.');
                }
            }
    }
    
        public void Hunt(string prey){
        system.debug('Stalks ' + prey);
            if(Pounce()){
                hunger +=3;
            }else {
                hunger--;
                if(mortality() != true){
                    system.debug(name + ' has died of starvation.');
                }
                throw new CatException();
            }
    }
    
    // Determine if the pounce was successful.
    public boolean Pounce(){
        return false;
    }
    
    // Eats the spoils of its hunt.
    public void DigestMeat(){
        
    }
    
    // Give a name to the Sphinx Cat.
    public void GiveName(string name){
        this.name = name;
    }
    
    // Give a default name to the Sphinx Cat.
    public void GiveName(){
        name = 'Bob the Sphinx Cat';
    }
    
    
    // Sphinx Cat behavior when on a table.
    public void OnTable(){
        KnockOff('Cup');
        super.KnockOff('vase');
    }
    
    //Knock off target
    public override void KnockOff(string target){
        system.debug('The cat ignores the ' + target);
        super.KnockOff(target);
    }
    
    //Makes sure the cat is alive
    public Boolean mortality(){
        return false;
    }
    
    public class InnerClass{
        
    }
    
}