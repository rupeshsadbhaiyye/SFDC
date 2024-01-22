public class soql16 {
    public static void test(){
        //Write an SOQL Query, to fetch all the Accounts and represent in Ascending order based on Account Name.
        //create the list of the account object
        list<account> lst=[select name,phone,fax from account order by name desc];
        //get the size of the record 
        system.debug('the size of the record is '+lst.size());
        //apply enhance for loop
        for(account acc:lst){
            system.debug('the record is '+acc);
        }
    }

}