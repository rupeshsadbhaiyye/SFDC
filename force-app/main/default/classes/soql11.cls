public class soql11 {
    public static void test(){
        //Write an apex program, to fetch all the Account Records from the object 
        //and represent on the Debug Log File.
        //create the list of account object and pass the query
        list<account> lst=[select name,phone,fax from account];
        //get the size of the list
        system.debug('the list of the size is '+lst.size());
        //apply enhance for loop
        for(account acc:lst){
            system.debug('the record are '+acc);
        }
    }

}