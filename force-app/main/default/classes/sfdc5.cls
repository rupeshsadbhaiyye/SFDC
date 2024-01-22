public class sfdc5 {
public string result{get;set;}
public void test(){
account acc=new account();
acc.name='Rupesh';
insert acc;
if(acc.id!=null){
result='record inserted '+acc.id;
}
}
}