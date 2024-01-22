@restresource(urlmapping='/accountresource4/*')
global class web8 {
@httpget()
    global static list<account> test(){
        list<account> lst=[select name,phone,fax,rating from account where rating=:'Cold'];
        return lst;
    }
}