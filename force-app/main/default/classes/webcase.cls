@restresource(urlmapping='/getrecord_fromcs/*')
global class webcase {
    @httpget()
    global static list<case> test(){
        map<string,string> mom = restcontext.request.params;
        list<case> lst=[select id,subject,priority from case where priority =:mom.get('priorityname')];
        return lst;
    }

}