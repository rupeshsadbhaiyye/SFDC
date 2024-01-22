public class example9 {
    public static void test(){
        //Write an apex program, to fetch all the Hiring Manager Records from the object and represent on the Debug Log File.
        //step1: create the list of hiring manager object
        list<hiring_manager__c> lst=[select name,Contact_Number__c,Email_Id__c from hiring_manager__c];
        //step2: apply the enhace for loop
        for(hiring_manager__c hr:lst){
            system.debug('the records are '+hr);
           
        }
    }

}