@restresource(urlmapping='/contact1resource/*')
global class web28 {
    @httpget()
    global static contact test(){
        map<string,string> input=restcontext.request.params;
        contact cs=[select id,lastname,phone,fax from contact where id=:input.get('cid')];
        return cs;
    }

}