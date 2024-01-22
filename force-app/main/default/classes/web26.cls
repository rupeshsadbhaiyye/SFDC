@restresource(urlmapping='/account2resource/*')
global class web26 {
    @httppatch()
    global static string test(string cname,string cphone,string cfax){
        list<account> lst=new list<account>();
        account acc=[select id,name,phone,fax from account where name=:cname];
        if(acc.Id!=null){
            acc.Name=cname;
            acc.Fax=cfax;
            acc.Phone=cphone;
            lst.add(acc);
            
        }
        account accrecord=new account();
        accrecord.Name=cname;
        accrecord.Fax=cfax;
        accrecord.Phone=cphone;
        lst.add(accrecord);
        if(!lst.isEmpty()){
            upsert lst;
            return 'record upserted sucessfully';
        }
        else{
            return 'record can not be';
        }
    }

}