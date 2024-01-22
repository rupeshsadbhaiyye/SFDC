@restresource(urlmapping='/leadstatus/*')
global class putleadweb {
    @httpput()
    global static string test(string fstatus){
        map<string,string> fetch=restcontext.request.params;
        list<lead> lst=[select lastname,status from lead where status=:fetch.get('updatestatus')];
        for(lead ld:lst){
            ld.status=fstatus;
        }
        if(!lst.isEmpty()){
            update lst;
            return 'record updated ';
        }
        else{
            return 'record not updated';
        }
    }

}