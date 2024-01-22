@restresource(urlmapping='/newrecord/*')
global class tworecords {
    @httppost()
    global static string test(){
        string accountrecord=restcontext.request.requestbody.tostring();
        list<contact> lst=(list<contact>) System.JSON.deserialize(accountrecord,list<contact>.class);
        if(!lst.isEmpty()){
            insert lst;
            return 'record inserted';
        }
        else{
            return 'record not inserted';
        }
    }

}