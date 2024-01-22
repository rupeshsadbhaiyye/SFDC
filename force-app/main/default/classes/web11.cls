@restresource(urlmapping='/accresource/*')
global class web11 {
    @httpget()
    global static list<account> test(){
        map<string,string> input=restcontext.request.params;
        list<account> lst=[select name,phone,fax,industry from account where industry=:input.get('cnumber')];
        return lst;
    }

}