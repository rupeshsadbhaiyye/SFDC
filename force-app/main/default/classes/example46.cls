public class example46 {
    public static void test(){
        //Write an apex program, to fetch all the Account Related to the Energy , Chemicals , Biotechnology Industry Accounts
        //create the list of account object
        list<account> lst=[select name,phone,fax,Industry from account 
                           where Industry In('Energy','Chemicals','Biotechnology')];
        //get the size of the record
        system.debug('the size of the record is '+lst.size());
        //apply enhance for loop
        for(account acc:lst){
            system.debug('the record are '+acc);
        }
    }

}