public class Class6 {
public string result{get;set;}
public void test(){
position__c ps=new position__c();
ps.Name='Vf Manager';
ps.country__c='INDIA';
ps.Number_of_vacancies__c=24;
ps.Milestone_date__c=date.parse('12/27/1997');
ps.Maximum_Budget__c=140000;
ps.HR_Email_ID__c='sadbhaiyyarupesh1947@gmail.com';
insert ps;
if(ps.id!=null){
result='record inserted sucessfully'+ps.id;
}
}
}