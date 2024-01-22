public class example23 {
    public static void test(){
        //Write an SOQL Query to fetch 5 Hiring Manager Records from the Object
        //create the list of hiring manager object
        list<Hiring_manager__c> lst=[select name,Contact_Number__c,Email_Id__c from Hiring_manager__c limit 5];
        //apply enhance for loop
        for(hiring_manager__c hr:lst){
            system.debug('the record is '+hr);
        }
    }

}