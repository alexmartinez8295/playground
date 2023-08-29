public class ContactAndLeadSearch {
    public static   List<List<Contact>> searchContactsAndLeads (String searchstring){
        
        String searchQuery = 'FIND \'' + searchstring + '\' IN ALL FIELDS RETURNING Contact, Lead';
        
        List<List<Contact>> returnValue = search.query(searchQuery);
        
        return returnValue;
        
    }
}