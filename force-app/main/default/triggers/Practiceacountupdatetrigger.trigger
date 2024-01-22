trigger Practiceacountupdatetrigger on contact (After insert) {
    switch on Trigger.operationtype {
        when AFTER_INSERT {
            Set<Id> accountids = new Set<Id>();
            //List<Account> lst=new List<Account>();
            for (Contact  con : Trigger.new) {
                if (String.isNotBlank(con.AccountId)) {
                    Accountids.add(con.AccountId);
                }
            }
            Map<Id, Account> accountmap = new Map<Id, Account>([select id,name, phone from Account WHERE ID In : accountids]);
            List<Account> lst=new List<Account>();
            for (Contact con : Trigger.new) {
                if (String.isNotBlank(con.AccountId) && accountmap.containsKey(con.AccountId)) {
                    account relatedaccount=accountmap.get(con.AccountId);
                    Account acc=new account();
                    acc.Id=relatedaccount.Id;
                    acc.phone=con.Phone;
                    lst.add(acc);
                }
            }
            update lst;
        }
    }
}