trigger Practaccounttrigger on Account (before insert,after insert) {
    /*When we are trying to insert new record into object.
     If there is any record existing with same account name it should prevent duplicate record.*/
    switch on Trigger.OperationType {
        when BEFORE_INSERT {
            Set<String> accountName=new Set<String>();
            for (Account acc : Trigger.new) {
                if (String.isNotBlank(acc.Name)) {
                    accountName.add(acc.Name);
                }
            }
            List<Account> lstaccount=[select id,name from account where name IN : accountName];
            Set<String> duplicateids = new Set<String>();       
            if (lstaccount!=Null) {
                for (Account acc1 : lstaccount) {
                    duplicateids.add(acc1.Name);
                }
            }
            for (Account acc2 : Trigger.new) {
                if (duplicateids.contains(acc2.Name)) {
                    acc2.Name.addError('you can not insert a duplicate record with the same name');
                }
                acc2.Name='Mr.'+acc2.Name;
            } 
        }
        when AFTER_INSERT {
            /*Whenever a new record is created into account object . 
            Before this new record is inserted into Account, delete all the contacts records with this account name.*/
            Set<String> accountname=new Set<String>();
            for (Account acc : Trigger.new) {
                accountname.add(acc.Name);
            }
            List<Contact> lstcon=[select id,lastname from contact where account.name In : accountname];
            
            if (lstcon !=Null) {
                delete lstcon;
            }
        }
    }
}