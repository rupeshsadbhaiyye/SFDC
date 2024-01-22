public class Dynamic8 {
    //Write an apex program, to fetch all the account Records from the object based on the Type Name at runtime.
    public static void test(string rahul){
        //declare the variable and pass the query
        string tr='select name,phone,fax,type from account where type=:rahul';
        //pass the reference variable to the variable
        list<account> lst=database.query(tr);
        //get the size of the record
        system.debug('the size of the record is '+lst.size());
        //apply enhance for loop
        for(account acc:lst){
            system.debug('the record are '+acc);
        }
    }

}