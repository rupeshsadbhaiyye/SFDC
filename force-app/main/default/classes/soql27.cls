public class soql27 {
    public static void test(){
        //Write an apex program, to fetch all the 
        //Case Records from the object and represent on the Debug Log File.
        //dynamic soql query
        string accountqury='select name,phone,fax from account';
        //create the list of case object and pass the query
        list<account> lst=database.query(accountqury);
        //get the size of the record
        system.debug('the size of the list is '+lst.size());
        //apply enhance for loop
        for(account acc:lst){
            system.debug('the record are '+acc);
        }
        
    }

}