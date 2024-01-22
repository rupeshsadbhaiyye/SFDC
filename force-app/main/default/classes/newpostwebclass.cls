@restresource(urlmapping='/getrecords/*')
global class newpostwebclass {
    @httppost()
    global static string test(string aname,string aphone){
        account acc=new account();
        acc.name=aname;
        acc.phone=aphone;
        insert acc;
        if(acc.id!=null){
            return 'account inserted succesfully'+acc.id;
        }
        else{
            return 'insertion failed';
        }
    }

}