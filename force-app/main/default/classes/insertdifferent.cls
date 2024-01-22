@restresource(urlmapping='/newinsert/*')
global class insertdifferent {
    @httppost()
    global static string test(){
        string leadrecords=restcontext.request.requestbody.tostring();
        list<account> lst=(list<account>) System.JSON.deserialize(leadrecords,list<account>.class);
        if(!lst.isEmpty()){
            insert lst;
            return 'record inseted';
        }
        else{
            return 'record not inserted';
        }
    }

}