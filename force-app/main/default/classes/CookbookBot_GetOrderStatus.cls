public with sharing class CookbookBot_GetOrderStatus {

  @InvocableMethod(label='Obtener Estados')
  public static List<List<Estado__c>> getEstados(List<String> sEstados) {

    String sEstado = sEstados[0];

    // Get the list of new and scheduled appointments
    List<Estado__c> estado = [SELECT Id, Name
                               FROM Estado__c
                               WHERE Name =: sEstado];

    // Create a list for the appointments
    // NOTE: This is a list of lists in order to handle bulk calls...
    List<List<Estado__c>> estadosList = new List<List<Estado__c>>();

    // Add all the new and scheduled appointments to the list
    estadosList.add(estado);

    return estadosList;
  }
}