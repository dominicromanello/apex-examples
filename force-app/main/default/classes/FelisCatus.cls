public virtual class FelisCatus extends Feline{
    
    public override void Sleep(){
        
    }

    public override void MakeNoise(){
        
    }
    
    public override void Claw(string target){
        super.Claw('Dog');
        system.debug(' ');
    }
    
    public virtual void KnockOff(string target){
        system.debug('Be a shame is something were to happen to that nice '+ target + ' you have there.... *Crash*');
    }
}