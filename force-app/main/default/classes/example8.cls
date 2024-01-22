public class example8 {
    public static void test(){
        //Write an apex program, to fetch all the Account Records from the object and represent on the Debug Log File.
        //step 1: create the lsit query of account object
        list<account> lst=[select name,fax,phone,id from account];
        system.debug('the size of the records is '+lst.size());
        for(account acc:lst){
            system.debug('the list is '+lst);
        }
    }

}