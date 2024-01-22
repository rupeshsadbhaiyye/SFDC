trigger Preventaccount on Account (before Delete, before insert) {
    //if any account is associated with opportunity it should throw an error before deleting the account record.
    if(trigger.isbefore && trigger.isdelete){
        set<id> accountids=new set<id>();
        for(account acc:trigger.old){
            accountids.add(acc.id);
        }
        list<account> lst=[select id,name,(select id,name from Opportunities) from account where id In:accountids ];
        Map<id,Account> mp=new Map<id,Account>();
        for(account ac:lst){
            mp.put(ac.id,ac);
        }
        for(account a:trigger.old){
            if(mp.get(a.id).Opportunities.size()>0){
                a.adderror('you can not delete an associated record');
            }
        }
}

}