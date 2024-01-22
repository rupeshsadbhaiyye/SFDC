public class example13 {
    public static void test(){
        //Write an apex program, to fetch all the Hiring Manager Records from the object and represent on the Debug Log File.
        //step1: create the list of hiring maager objet
        list<hiring_manager__c> lst=[select name,Contact_Number__c,Email_Id__c,Location__c,Position__c from hiring_manager__c];
        //get the size
        system.debug('the size of list is '+lst.size());
        //step2:aplly enhanced for loop
        for(hiring_manager__c hr:lst){
            system.debug('the record are '+hr);
        }
    }
}