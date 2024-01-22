public class class18 {
public list<account> lst{get;set;}
public void test(){
lst=new list<account>();
lst=[select name,phone,fax from account];
}
}