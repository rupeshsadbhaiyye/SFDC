public class Class16 {
public list<contact> lst{get;set;}
public string searchtext{get;set;}
public void test(){
list<contact> lst=new list<contact>();
if(searchtext!=null && searchtext!=''){
lst=[select lastname,phone,fax,email from contact where lastname like:searchtext+'%'];
}
}
}