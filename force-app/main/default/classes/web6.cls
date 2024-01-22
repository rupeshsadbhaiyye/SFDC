@restresource(urlmapping='/accountresource2/*')
global class web6 {
    @httpget()
    global static list<account> test(){
        map<string,string> input=restcontext.request.params;
        list<account> lst=[select name,phone,fax,industry from account where industry=:input.get('anumber')];
        return lst;
    }

}