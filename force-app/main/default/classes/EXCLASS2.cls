public class EXCLASS2 {
public list<account> lst{get;set;}
public EXCLASS2 (){
lst=new list<account>();
lst=[select name,phone,fax from account];
}
}