public class myCustomAccount {
    public List<Account> accountList {get;set;}
    /*
    public List<Account> getAccountList(){
        return accountList;
    }
    
    public void setAccountList(List<Account> accList){
        this.accountList = accList;
    }
    */
    public myCustomAccount(){
        accountList = [SELECT Id, Name FROM Account];
    }
}