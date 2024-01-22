public class soql26 {
    public static void test(){
        //Write an apex program, to fetch all the
        // Account Related to the Energy , Chemicals , Biotechnology Industry Accounts.
        // crate the list of account object
        list<account> lst=[select name,phone,fax,industry from account
                           where industry in('Energy','Chemicals','Biotechnology')];
        //get the size of the record
        system.debug('the size of the record is '+lst.size());
        //apply enhance for loop
        for(account acc:lst){
            system.debug('the record are'+acc);
        }
    }

}