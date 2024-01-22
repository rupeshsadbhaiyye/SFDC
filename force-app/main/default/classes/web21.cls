@restresource(urlmapping='/hresource/*')
global class web21 {
    @httppost()
    global static string test(){
        string input=restcontext.request.requestbody.tostring();
        list<lead> lst=(list<lead>)system.JSON.deserialize(input, list<lead>.class);
        if(!lst.isEmpty()){
            insert lst;
            return 'record inserted succesfully';
        }
        else{
            return 'record can not be inserted';
        }

    }

}