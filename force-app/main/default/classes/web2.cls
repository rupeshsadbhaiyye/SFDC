@restresource(urlmapping='/contactresource/*')
global class web2 {
    @httpget()
    global static list<contact> test(){
        list<contact> lst=[select name,phone,fax from contact];
        return lst;

    }

}