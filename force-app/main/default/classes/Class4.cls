public class Class4 {
public string result{get;set;}
public void test(){
account acc=new account();
acc.name='Rupesh';
acc.phone='7896325410';
acc.fax='147';
insert acc;
if(acc.id!=null){
result='record inserted';
}
}
}