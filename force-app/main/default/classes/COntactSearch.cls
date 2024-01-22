public class COntactSearch {
public string searchtext{get;set;}
public list<contact> lst{get;set;}
public void test(){
lst=new list<contact>();
lst=[select lastname,phone,fax from contact where lastname like : searchtext+'%'];
}
}