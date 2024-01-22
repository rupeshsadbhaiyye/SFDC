public class ShowAccountsController123 {
public list<account> lst{get;set;}
public void test(){
list<account> lst=new list<account>();
lst=[select name,phone,fax from account];
}
}