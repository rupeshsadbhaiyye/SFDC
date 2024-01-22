@restresource(urlmapping='/resource1/*')
global class web17 {
    @httppost()
    global static string test(string cname,string cphone,string cfax){
        account acc=new account();
        acc.name=cname;
        acc.fax=cfax;
        acc.phone=cphone;
        insert acc;
        if(acc.id!=null){
            return 'record inserted succesfully'+acc.Id;
        }
        else{
            return 'record not inserted';
        }
    }

}