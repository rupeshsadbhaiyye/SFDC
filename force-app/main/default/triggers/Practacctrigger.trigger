trigger Practacctrigger on Account (before insert,before update) {
    //create a trigger on account object to avoid the duplicate record based on the phone and name
    set<string> dnyan=new set<string>();
    for(account acc:trigger.new){
      dnyan.add(acc.Name);
        dnyan.add(acc.Phone);  
    }
    list<account> lst=[select id,name,phone from account where name=:dnyan OR phone=:dnyan];
    set<string> soumya=new set<string>();
    for(account acc1:lst){
        soumya.add(acc1.Name);
        soumya.add(acc1.Phone);
    }
    for(account acc2:trigger.new){
        if(acc2.name!=null || acc2.phone!=null){
            if(soumya.contains(acc2.name)){
                acc2.name.adderror('you can not insert a duplicate name');
            }
            if(soumya.contains(acc2.phone)){
                acc2.phone.adderror('You can not insert duplicate phone');
            }
        }
    }

}