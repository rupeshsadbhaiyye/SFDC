public class soql25 {
    public static void test(string industryname){
        //Write an apex program, to fetch only those Account Records from the object 
        //based on the specified Industry Name at runtime.
        //create the list of account object
        list<account> lst=[select name,phone,fax,industry from account where industry=:industryname];
        //get the size of the record
        system.debug('the size of the record is '+lst.size());
        //apply enhance for loop
        for(account acc:lst){
            system.debug('the record are '+acc);
        }
    }

}