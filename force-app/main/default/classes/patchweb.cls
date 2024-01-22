@restresource(urlmapping='/PATHMETHOD/*')
global class patchweb {
    @httppatch()
    global static string test( string frating){
        list<account> lst=new list<account>();
        list<account> lst1=[select name,rating from account where rating='Hot'];
        for(account acc:lst){
            acc.rating=frating;
            lst1.add(acc);
        }
        account ac=new account();
        ac.Name='NARENDRA MODI';
        ac.rating='Cold';
        lst.add(ac);
        if(!lst.isEmpty()){
            upsert lst;
            return 'record upserted';
        }
        else{
            return 'record not upserted';
        }
    }

}