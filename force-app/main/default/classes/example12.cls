public class example12 {
    public static void test(){
        //Write an apex program, to fetch all the Account Records from the object and represent on the Debug Log File
        //step1: crate the list of the account object
        list<account> lst=[select name,phone,fax,rating from account];
        system.debug('the size of the list '+lst.size());
        //step2: apply enhance for loop
        for(account acc:lst){
            system.debug('the record are '+acc);
        }
    }

}