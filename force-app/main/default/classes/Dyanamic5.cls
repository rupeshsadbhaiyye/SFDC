public class Dyanamic5 {
    public static void test(){
        //Write an apex program, to fetch all the Hiring Manager Records from the object and represent on the Debug Log File.
       //declare the varible and the pass the query
       string sham='select name,Contact_Number__c,Email_Id__c,Location__c,Position__c from hiring_manager__c';
        //pass the referencr variable to the variable
        list<hiring_manager__c> lst=database.query(sham);
        //get the size of the record 
        system.debug('the record is '+lst.size());  
        //apply enhance for loop
        for(hiring_manager__c hr:lst){
            system.debug('the record is '+hr);
        }
    }

}