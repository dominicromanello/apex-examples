public with sharing class AccountsAndRelatedContacts {
    public List<Contact> contactList {get; set;}

    public AccountsAndRelatedContacts() {
            contactList = [SELECT Id, Account.Id, Account.Name, FirstName, LastName, Phone, Email FROM Contact];
    }
}