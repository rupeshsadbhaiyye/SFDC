@restresource(urlmapping='/acresource1/*')
global class web15 {
    @httpdelete()
    global static string test(){
        map<string,string> input=restcontext.request.params;
        list<account> lst=[select name,phone,fax from account where name=:input.get('cnumber')];
        if(!lst.isEmpty()){
            delete lst;
            return 'record deleted sucessfully';
        }
        else{
            return 'record not deleted';
        }

    }

}