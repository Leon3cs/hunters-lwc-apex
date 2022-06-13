trigger OpportunityTrigger on Opportunity (before insert, after insert, before update) {
    if(Trigger.IsBefore){
        if(Trigger.IsInsert){
            OpportunityTriggerHandler.createTask(Trigger.new);
        }
        if(Trigger.IsUpdate){
            OpportunityTriggerHandler.resetStatus(Trigger.new, Trigger.old);
        }
    }
    if(Trigger.IsAfter){
        if(Trigger.IsInsert){
            OpportunityTriggerHandler.createTaskForOpportunity(Trigger.new);
        }
    }
}