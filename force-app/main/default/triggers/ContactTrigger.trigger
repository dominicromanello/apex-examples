trigger ContactTrigger on Contact (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    
    //New Way - More advanced
    Switch on Trigger.OperationType{
        When BEFORE_INSERT {
            ContactTriggerHandler.CheckForDuplicates(trigger.new);
        }
        When BEFORE_UPDATE{
            
        }
        When BEFORE_DELETE{
            
        }   
        When AFTER_INSERT{
            
        }
        When AFTER_UPDATE{
            
        }
        When AFTER_DELETE{
            
        }
        When AFTER_UNDELETE{
            
        }
        When else{
            
        }
    }
}