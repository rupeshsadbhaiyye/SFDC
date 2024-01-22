@restresource(urlmapping='/updaterecords/*')
global class putweb {
    @httpput()
    global static string test(string fphone){
        map<string,string> fetch=restcontext.request.params;
        list<contact> lst=[select lastname,phone from contact where lastname=:fetch.get('newrating')];
        for(contact con:lst){
            con.phone=fphone;
        }
        if(!lst.isEmpty()){
            update lst;
            return 'record updated';
        }
        else{
            return 'record not updated';
        }

    }

}