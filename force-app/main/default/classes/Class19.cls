public class Class19 {
public list<account> lst{get;set;}
public Class19(){
lst=new list<account>();
lst=[select name,phone,fax,owner.firstname,owner.lastname from account];
}
}