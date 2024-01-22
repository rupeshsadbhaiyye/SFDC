public class Sdfcnew {
public string result{get;set;}
public void test(){
account acc=new account();
acc.name='Rupeesh';
acc.phone='741258963';
acc.fax='741';
insert acc;
if(acc.id!=null){
result='record inserted succesfully'+acc.id;
}
}
}