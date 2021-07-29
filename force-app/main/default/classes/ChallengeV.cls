public class ChallengeV {
    
    public ChallengeV(){   }
    
    //We have received new requirements that the data in our org needs to meet new completeness standards. 
    //To facilitate this we are going to use SOQL to check our data and handle it by setting a default value 
    //for the phone to be equal to the related account, and create a task if it is missing an email for the record owner to update it.
    public void AssignOwner(){
        List<Task> newTaskList = new List<Task>();
        List<Contact> updatedContactPhone = new List<Contact>();
        for(Contact c : [SELECT Email, Phone, OwnerId, Name, Account.Phone FROM Contact WHERE Email = Null or Phone = Null]){
            if(c.Phone == Null){
            	c.Phone = c.Account.Phone;
                updatedContactPhone.add(c);
        	}
            if(c.email == Null){
                Task bobsTask = new Task();
                bobsTask.OwnerId = c.OwnerId;
        		bobsTask.Status = 'Not Started';
           		bobsTask.Subject = 'Call';
                newTaskList.add(bobsTask);
        	}
        }
        insert newTaskList;
        update updatedContactPhone;
    }
}