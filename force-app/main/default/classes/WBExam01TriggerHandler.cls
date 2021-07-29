///////////////////////////////////////////////////////////
/*
 * 
 * 
 */
//////////////////////////////////////////////////////////

public class WBExam01TriggerHandler {
	
    public static void PreventDuplicatesOnEmail(List<Contact> newContacts){
        Set<String> emailSet = new Set<String>();
        //List/Set for loop
        for(Contact c : newContacts){
            if(c.email != Null){
                emailSet.add(c.Email);
            }
        }
        //SOQL for loop
        for(Contact c : [SELECT Email FROM Contact WHERE Email IN : emailSet]){
            for(Contact newCon : newContacts){
                if(c.Email == newCon.email){
                    newCon.addError('Email is already in use.');
                }
            }
        }
    }
    
    public static void NewAccountContact(List<Account> newAccounts){
        Set<String> accNames = new Set<String>();
        for(Account a : newAccounts){
            accNames.add(a.Name);
                }
        List<Contact> relatedContacts = [SELECT LastName FROM Contact WHERE LastName IN : accNames];
        for(Account a : newAccounts){
            for(Contact c : relatedContacts){
                if(a.Name == c.LastName){
                    c.AccountId = a.Id;
                        }
            }
        }
        update relatedContacts;
    }
    
    //trigger.new, trigger.old contain lists.
    // New is going to return the updated versions of those records.
    // Old is going to be the original values of those records.
    // trigger.newMap and trigger.oldMap these contain maps.
    // Maps are key-value pair collections.
    public static void OpportunityClosedCheck(List<Opportunity> updatedOpps, Map<id, Opportunity> oldOpps){
        for(Opportunity o : updatedOpps){
            Opportunity oldOpp = oldOpps.get(o.id);
            if(oldOpp.StageName == 'Closed Won'|| oldOpp.StageName == 'Closed Lost'){
                o.addError('This opportunity is closed and cannot be changed.');
            }
        }
    }
}