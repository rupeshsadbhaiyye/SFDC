public class CLass10 {
public list<account> lst{get;set;}
public string searchtext{get;set;}
public void test(){
lst=new list<account>();
if(searchtext!=null && searchtext!=''){
lst=[select name,phone,fax from account where name like:searchtext+'%'];
}
}
}