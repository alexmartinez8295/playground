public class ContactSearch {
    public static List<Contact> searchForContacts (String lastName, String mailingPostalCode){
        
        List<Contact> returnValue = [SELECT Id, Name FROM Contact WHERE LastName =: lastName AND MailingPostalCode=: mailingPostalCode ];
        
        return returnValue;
        
    }
}