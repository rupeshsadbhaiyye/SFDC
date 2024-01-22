public class sfdc3 {
public string result{get;set;}
public void test(){
account acc=new account();
acc.name='lalit bagle';
acc.fax='741';
acc.phone='741258963';
insert acc;
if(acc.id!=null){
result='record is '+acc.id;
}

}
}