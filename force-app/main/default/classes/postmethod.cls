@restresource(urlmapping='/Insertnew/*')
global class postmethod {
    @httppost()
    global static string test(string fname,string fphone,string ffax){
        account acc=new account();
        acc.Name=fname;
        acc.Phone=fphone;
        acc.fax=ffax;
        if(acc.id!=''){
            insert acc;
            return 'record inserted';
        }
        else{
            return 'record can not be inserted';
        }
    }

}