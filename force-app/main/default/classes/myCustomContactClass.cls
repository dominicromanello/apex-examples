public class myCustomContactClass {
    public List<Contact> contactList {get;set;}
    /*
    public List<Contact> getContactList(){
        return contactList;
    }
    
    public void setContactList(List<Contact> conList){
        this.contactList = conList;
    }
    */
    public myCustomContactClass(){
        contactList = [SELECT Id, FirstName, LastName, Phone, Email FROM Contact];
    }
}