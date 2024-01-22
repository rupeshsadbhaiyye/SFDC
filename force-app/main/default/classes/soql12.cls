public class soql12 {
    public static void test(){
       //Write an apex program, to fetch all the Hiring Manager Records from the object 
       //and represent on the Debug Log File.
       //create the list of hiring manager object and pass the query
       list<hiring_manager__c> lst=[select name,Contact_Number__c,Email_Id__c,Location__c,Position__c 
                                    from hiring_manager__c];
        //get the size of the list
        system.debug('the size of the record is '+lst.size());
        //apply enhance for loop
        for(hiring_manager__c hr:lst){
            system.debug('the record are '+hr);
        }
    }

}