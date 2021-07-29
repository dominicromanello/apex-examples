public class ChallengeXVI {
    
    public List<Contact> contactList {get;set;}
    public List<Account> accountList {get;set;}
    
    public Integer page = 0;
    public Integer lim = 3;
    
    public Integer pagenate {
        get{return page * lim;}
    	set;}
    
    public void refresh(){
        contactList = [SELECT Id, FirstName, LastName, Phone, Email, Account.Name, Account.Site
                  	FROM Contact LIMIT:lim OFFSET: pagenate];
    }
    
    public void next(){
        page +=1;
        refresh();
    }
    
    public void previous(){
        if(page>0){
            page -=1;
        }
        refresh();
    }

    public ChallengeXVI(){
        refresh();
	}
}