trigger AccountTrigger on Account (before insert, before update) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            AccountTriggerHandler.atualizarEnderecos(Trigger.new);
        }
        if(trigger.isUpdate){
            AccountTriggerHandler.atualizarEnderecos(Trigger.new, Trigger.old);
        }
    }
}