@restresource(urlmapping='/account1resource/*')
global class web25 {
    @httpput()
    global static string test(string aname,string aphone,string afax){
        account acc=[select name,phone,fax from account where name=:aname];
        if(acc.id!=null){
            acc.Name=aname;
            acc.Phone=aphone;
            acc.fax=afax;
            update acc;
            return 'account updated';
        }
        else{
            return 'can not be updated';
        }
    }

}