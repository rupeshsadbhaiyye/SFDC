@restresource(urlmapping='/acresource/*')
global class web13 {
    @httppost()
    global static string test(){
        string input=restcontext.request.requestbody.tostring();
       List<Account> lst = (List<Account>) System.JSON.deserialize(input, List<account>.Class);
        if(!lst.isEmpty()){
            insert lst;
            return 'record inserted sucessfully';
        }
        else{
            return 'record is not inserted';
        }
    }

}