@restresource(urlmapping='/getlead/*')
global class leedweb {
    @httpget()
    global static list<lead> test(){
        map<string,string> fetch=restcontext.request.params;
        list<lead> lst=[select name,status from lead where status =:fetch.get('statusname')];
        return lst;
    }

}