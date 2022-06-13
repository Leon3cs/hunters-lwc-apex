public class OpportunityTriggerHandler {

    public static void createTask(List<Opportunity> opps){
        List<Task> tasks = new List<Task>();
        for(Opportunity opp : opps){
            if(opp.Amount > 1000){
                Task ts = new Task();
                ts.Subject = 'Analisar';
                ts.ActivityDate = Date.today();
                ts.OwnerId = opp.OwnerId;
                ts.WhatId = opp.Id;
                ts.Status = 'Open';
                tasks.add(ts);
            }else{
                Task ts = new Task();
                ts.Subject = 'Aprovar';
                ts.ActivityDate = Date.today();
                ts.OwnerId = opp.OwnerId;
                ts.WhatId = opp.Id;
                ts.Status = 'Open';
                tasks.add(ts);
            }
        }
        insert tasks;
    }
    
    public static void createTaskForOpportunity(List<Opportunity> opps){
        List<Task> tasks = new List<Task>();
        for(Opportunity opp : opps){
            if(opp.Amount > 1000){
                Task ts = new Task();
                ts.Subject = 'teste';
                ts.ActivityDate = Date.today();
                ts.OwnerId = opp.OwnerId;
                ts.WhatId = opp.Id;
                ts.Status = 'Open';
                tasks.add(ts);
            }
        }
        insert tasks;
    }
    
    public static void resetStatus(List<Opportunity> newOpps, List<Opportunity> oldOpps){
        for(Integer i=0;i<newOpps.size();i++){
            if(newOpps.get(i).Amount != oldOpps.get(i).Amount){
                newOpps.get(i).StageName = 'Prospecting';
            }
        }
    }
}