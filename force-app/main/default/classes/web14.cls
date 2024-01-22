@restresource(urlmapping='/resource/*')
global class web14 {
    @httpdelete()
    global static string test(){
        map<string,string> input=restcontext.request.params;
        lead ld=[select name,phone,fax from lead where name=:input.get('Cnumber')];
        if(ld.id!=null){
            delete ld;
            return 'Record deleted sucessfully';
        }
        else{
            return 'record could not be deleted';
        }
    }

}