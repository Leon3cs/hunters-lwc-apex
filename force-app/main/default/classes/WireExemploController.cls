public with sharing class WireExemploController {
    
    @AuraEnabled(cacheable=true)
    public static Account getAccountDetails(Id recordId, Date data){
        return [SELECT Id, Name, Phone FROM Account WHERE Id = :recordId];
    }

    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getProducts(Id recordId){
        return [SELECT Id, StageName, (SELECT Id, Name, ProductCode FROM OpportunityLineItems) FROM Opportunity WHERE Id = :recordId];
    }
}
