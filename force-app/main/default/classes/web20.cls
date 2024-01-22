@restresource(urlmapping='/Deletecase/*')
global class web20 {
    @httpdelete()
    global static string test(){
        map<string,string> input=restcontext.request.params;
        list<case> lst=[select 	status from case where status =:input.get('cnumber')];
        if(!lst.isEmpty()){
            delete lst;
            return 'record deleted succesfully';

        }
        else{
            return 'record can not be deleted';
        }

    }

}