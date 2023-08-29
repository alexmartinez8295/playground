public with sharing class fetchRelatedRecords {

    @AuraEnabled (cacheable=true)
    public static List<Contact> fetchContacts(){
        return [SELECT Id, Name, AccountId, Email, LeadSource, MobilePhone, Phone FROM Contact LIMIT 15];       
    }
    
    @AuraEnabled(Cacheable = true)
    public static List<Account> getAccounts(){
        return [SELECT Id, Name, Industry, Type, Phone, Rating, AccountNumber FROM Account ORDER BY Name LIMIT 10];
    }
}