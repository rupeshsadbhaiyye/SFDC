public class Class7 {
public string result{get;set;}
public void test(){
hiring_manager__c hr=new hiring_manager__c();
hr.name='Vf RUpesh';
hr.Contact_Number__c='8523697410';
hr.Email_Id__c='sadbhaiyyarupesh1947@gmail.com';
insert hr;
if(hr.id!=null){
result='record inserted '+hr.id;
}
}
}