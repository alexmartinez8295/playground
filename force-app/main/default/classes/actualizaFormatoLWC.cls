public class actualizaFormatoLWC {
    @AuraEnabled(cacheable=true)
    public static Formato__c getFormato() {
        return [
            SELECT Id, Name, Nombre_Formato__c, Clave__c
            FROM Formato__c
            LIMIT 1
        ];
    }
}