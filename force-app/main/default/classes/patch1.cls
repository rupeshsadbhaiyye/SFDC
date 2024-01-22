@restresource(urlmapping='/newlead/*')
global class patch1 {
    @httppatch()
    global static string test(string sstatus){
        list<lead> lst=new list<lead>();
        list<lead> lst1=[select id,lastname,status from lead where status='Open - Not Contacted'];
        for(lead ld:lst){
            ld.status=sstatus;
            lst1.add(ld);
        }
        for(integer counter=1;counter<=10;counter++){
            lead ldd=new lead();
            ldd.lastName='LALU YADAV';
            ldd.Company='SUMASOFT pvt ltd';
            ldd.Status='Open - Not Contacted';
            lst.add(ldd);
        }
        if(!lst.isEmpty()){
            upsert lst;
            return 'record upserted';
        }
        else{
            return 'record not upserted';
        }
    }

}