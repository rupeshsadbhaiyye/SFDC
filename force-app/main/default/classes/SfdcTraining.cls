public class SfdcTraining {
public list<account> lst{get;set;}
public void test(){
 lst=new list<account>();
lst=[select id,name,phone,fax,createddate from account Order by createddate desc];
}
}