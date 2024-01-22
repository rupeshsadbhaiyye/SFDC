public class Dyanamic7 {
    /*Write an apex program, to fetch all the Hiring Manager Records 
     from the object based on the specified Location Name at runtime.*/
    public static void test(string Ra){
        //declare the variable and pass the query
        string stuct='select name,location__c from hiring_manager__c where location__c=:Ra';
        //pass the reference variable to the variable
        list<hiring_manager__c> lst=database.query(stuct);
        //get the size of the record 
        system.debug('the record size is '+lst.size());
        //apply for loop
        for(hiring_manager__c hr:lst){
            system.debug('the record are '+hr);
}
        
        
    }
    

}