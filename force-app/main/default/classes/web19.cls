@restresource(urlmapping='/leadresource/*')
global class web19 {
    @httppost()
    global static string test(string lname,string lfax,string lphone,string lcompany,string lstatus){
        lead ld=new lead();
        ld.LastName=lname;
        ld.fax=lfax;
        ld.Phone=lphone;
        ld.Status=lstatus;
        ld.Company=lcompany;
        insert ld;
        if(ld.Id!=null){
            return 'record inserted succesfully'+ld.Id;
        }
        else{
            return 'record not inserted';
        }
    }

}