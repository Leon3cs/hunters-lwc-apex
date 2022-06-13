public class OpportunityBatch implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('SELECT Id, StageName, CloseDate FROM Opportunity');
    }
    
    public void execute(Database.BatchableContext bc, List<Opportunity> scope){
        for(Opportunity op : scope){
            op.StageName = 'Needs Analysis';
        }
        
        update scope;
    }
    
    public void finish(Database.BatchableContext bc){}
}