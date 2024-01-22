@restresource(urlmapping='/contactdelete/*')
global class contactdelete {
    @httpdelete()
    global static string test(){
        map<string,string> fetch=restcontext.request.params;
        list<contact> lst=[select name,email from contact where email=:fetch.get('emaiaddres')];
        if(!lst.isEmpty()){
            delete lst;
            return 'record deleted';
        }
        else{
            return 'record not fount';
        }
    }

}