public with sharing class AccountTriggerHandler {
    
    public static void atualizarEnderecos(List<Account> accts){
        for(Account acc : accts){
            if(String.isNotBlank(acc.BillingCity)){
                acc.ShippingCity = acc.BillingCity;
            }
            if(String.isNotBlank(acc.BillingCountry)){
                acc.ShippingCountry = acc.BillingCountry;
            }
            if(String.isNotBlank(acc.BillingPostalCode)){
                acc.ShippingPostalCode = acc.BillingPostalCode;
            }
            if(String.isNotBlank(acc.BillingState)){
                acc.ShippingState = acc.BillingState;
            }
            if(String.isNotBlank(acc.BillingStreet)){
                acc.ShippingStreet = acc.BillingStreet;
            }
        }
    } 
    
    public static void atualizarEnderecos(List<Account> newAccts, List<Account> oldAccts){
        for(Integer index = 0; index < newAccts.size(); index++){
            if(String.isNotBlank(newAccts[index].BillingCity) && (newAccts[index].BillingCity != oldAccts[index].BillingCity)){
                newAccts[index].ShippingCity = newAccts[index].BillingCity;
            }
            if(String.isNotBlank(newAccts[index].BillingCountry) && (newAccts[index].BillingCountry != oldAccts[index].BillingCountry)){
                newAccts[index].ShippingCountry = newAccts[index].BillingCountry;
            }
            if(String.isNotBlank(newAccts[index].BillingPostalCode) && (newAccts[index].BillingPostalCode != oldAccts[index].BillingPostalCode)){
                newAccts[index].ShippingPostalCode = newAccts[index].BillingPostalCode;
            }
            if(String.isNotBlank(newAccts[index].BillingState) && (newAccts[index].BillingState != oldAccts[index].BillingState)){
                newAccts[index].ShippingState = newAccts[index].BillingState;
            }
            if(String.isNotBlank(newAccts[index].BillingStreet) && (newAccts[index].BillingStreet != oldAccts[index].BillingStreet)){
                newAccts[index].ShippingStreet = newAccts[index].BillingStreet;
            }
        }
    } 
}
