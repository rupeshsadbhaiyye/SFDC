public class Class17 {
public list<contact> lst{get;set;}
public void test(){
lst=new list<contact>();
lst=[select id,name,phone,fax from contact];
}
}