public with sharing class AccountUtils {
    public static List<Account> accountsByState(String abv) {
        return [SELECT Id, Name FROM Account WHERE BillingState LIKE: abv];
    }
}