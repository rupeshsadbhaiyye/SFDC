@restresource(urlmapping='/caseresource1/*')
global class web7 {
    @httpget()
    global static list<case> test(){
        map<string,string> input=restcontext.request.params;
        list<case> lst=[select origin,status,priority from case where priority=:input.get('muk')];
        return lst;
    }

}