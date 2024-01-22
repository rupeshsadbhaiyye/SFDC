public class EXCLASS1 {
public string result{get;set;}
public void test(){
account acc=new account();
acc.name='VF PAGE 1';
acc.phone='741258963';
acc.fax='741';
insert acc;
if(acc.id!=null){
result='record inserted sucessfully '+acc.id;
}
}
}