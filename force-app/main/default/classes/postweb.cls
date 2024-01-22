@restresource(urlmapping='/insernew/*')
global class postweb {
    @httppost()
    global static string test(string flastname,string ffirstname,string fphone,string ffax){
        list<contact> lst=new list<contact>();
        for(integer counter=1;counter<=10;counter++){
            contact con=new contact();
            con.LastName=flastname;
            con.FirstName=ffirstname;
            con.Phone=fphone;
            con.Fax=ffax;
            lst.add(con);
        }
        if(!lst.isEmpty()){
            insert lst;
            return 'The record inserted';
        }
        else{
            return 'record can not be inserted';
        }
    }

}