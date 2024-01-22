public class example31 {
    public static void test(){
        //get only 20 record from the hiring manager
        //create the list of hiring manager object
        list<hiring_manager__c> lst=[select name,Contact_Number__c from hiring_manager__c offset 626];
        //get the record
        system.debug('the record is '+lst.size());
        //apply enhance for loop
        for(hiring_manager__c hr:lst){
            system.debug('the record are '+hr);
        }
    }

}