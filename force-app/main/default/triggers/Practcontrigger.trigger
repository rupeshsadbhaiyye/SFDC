trigger Practcontrigger on Contact (before insert,before update) {
    //create a trigger on contact object to avoid the duplicate records
    set<string> s=new set<string>();
    for(contact con:trigger.new){
        s.add(con.LastName);
    }
    list<contact> lst=[select id,lastname from contact where lastname=:s];
    set<string> duplicate=new set<string>();
    for(contact con1:lst){
        duplicate.add(con1.LastName);
    }
    for(contact con2:trigger.new){
        if(con2.lastname!=null){
            if(duplicate.contains(con2.LastName))
                con2.LastName.adderror('you can not insert duplicate records'); 
        }
    }

}