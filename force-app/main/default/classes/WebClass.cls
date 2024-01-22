@Restresource(urlmapping='/new_webservice/*')
global class WebClass {
@httpget
    global static list<account>  test(){
        list<account> lst=[select name,phone,fax from account];
        return lst;
    }
}