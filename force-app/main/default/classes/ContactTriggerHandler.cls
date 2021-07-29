public class ContactTriggerHandler {
    
    public static void CheckForDuplicates(List<Contact> newContacts){
        Set<string> emailSet = new Set<string>();
            for(Contact c : newContacts){
                emailSet.add(c.email);
                
            }
            for(contact contact : [SELECT email FROM Contact WHERE email IN :emailSet]){
                for(Contact newContact : newContacts){
                    if(newContact.email == contact.email){
                        newContact.addError('Duplicate Email');
                    }
                }
            }
    }

}