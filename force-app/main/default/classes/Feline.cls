public abstract class Feline {
	
    public abstract void sleep();
    
    public abstract void MakeNoise();
    
    Public virtual void Claw(string target){
        system.debug('Claws' + target);
    }
    
    public void NotParticularlyUsefulMethod(){
        system.debug('We might need this I guess.');
    }
}