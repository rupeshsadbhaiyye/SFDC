@restresource(urlmapping='/DETECT/*')
global class newwebservice {
    @httpget()
    global static list<contact> test(){
        map<string,string> mp = restcontext.request.params;
        list<contact> lst=[select id,lastname,firstname from contact where lastname=: mp.get('na')];
        return lst;
    }

}