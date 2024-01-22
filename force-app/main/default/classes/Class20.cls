public class Class20 {
public list<Bank__c > lst{get;set;}
public void test(){
lst=new list<Bank__c >();
lst=[select name,Address__c,Contact_Number__c,createddate from Bank__c Order by createddate desc];
}
}