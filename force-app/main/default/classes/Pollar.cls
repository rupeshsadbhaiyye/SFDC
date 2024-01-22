public class Pollar {
public list<account> lst{get;set;}
public void pollar(){
lst=new list<account>();
lst=[select name,phone,fax,createddate from account order by createddate desc];
}
}