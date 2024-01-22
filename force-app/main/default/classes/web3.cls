@restresource(urlmapping='/accountresource1/*')
global class web3 {
@httpget()
    global static list<account> test(){
        list<account> lst=[select name,phone,fax,rating from account where rating=:'cold'];
        return lst;
    }
}