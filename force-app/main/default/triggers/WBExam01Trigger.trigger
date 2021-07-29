trigger WBExam01Trigger on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {

    switch on Trigger.OperationType{
        when BEFORE_INSERT{
            
        }when BEFORE_UPDATE{
            //WBExam01TriggerHandler.OpportunityClosedCheck(trigger.new, trigger.oldmap);
        }when BEFORE_DELETE{
            
        }when AFTER_INSERT{
            WBExam01TriggerHandler.NewAccountContact(trigger.new);
        }when AFTER_UPDATE{
            
        }when AFTER_DELETE{
            
        }when AFTER_UNDELETE{
            
        }
    }
    
}