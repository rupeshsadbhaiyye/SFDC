public class NEwAccount {
public string result{get;set;}
public void test(){
account acc=new account();
acc.name='Rupesh';
acc.phone='741258963';
acc.fax='412';
insert acc;
if(acc.id!=Null){
result='account record inserted'+acc.id;
}
}
}