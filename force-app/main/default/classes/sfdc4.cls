public class sfdc4 {
public list<account> lst{get;set;}
public sfdc4 (){
lst=new list<account>();
lst=[select name,phone,fax from account order by createddate desc];
}
}