trigger ContactTrigger on Contact (before insert) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            ContactTriggerHandler.gerarContas(Trigger.new);   
        }
    }
}