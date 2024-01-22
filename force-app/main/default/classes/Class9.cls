public class Class9 {
public list<account> lst{get;set;}
public Class9(){
lst=new list<Account>();
lst=[select Name,AnnualRevenue,phone from account];
}
}