public with sharing class ContactTriggerHandler {
    
    public static void gerarContas(List<Contact> cons){
        List<Account> contas = new List<Account>();
        Map<String, Account> accMap = new Map<String, Account>();

        for(Contact con : cons){
            if(con.AccountId == null){
                String name = con.FirstName + ' ' + con.LastName;
                Account acc = new Account(
                    Name=name,
                    Phone=con.Phone
                );

                accMap.put(name, acc);

                contas.add(acc);
            }
        }

        insert contas;

        for(Contact con : cons){
            String name = con.FirstName + ' ' + con.LastName;
            Account acc = accMap.get(name);

            con.AccountId = acc.Id;
        }
    }
}
