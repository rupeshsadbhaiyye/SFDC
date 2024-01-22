public class example22 {
    public static void test(){
        //Write an SOQL Query to fetch 10 Account Records from the Object.
        //create the list of account object
        list<account> lst=[select name,phone,fax from account order by name desc];
        //apply enhance for loop
        for(account acc:lst){
            system.debug('the record are '+acc);
        }
    }

}