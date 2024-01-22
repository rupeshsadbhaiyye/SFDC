@restresource(urlmapping='/accountresource/*')
global class web1 {
  @httpget()
    global static list<account> test(){
      list<account> lst=[select name,phone,fax from account];
        return lst;
    }
}