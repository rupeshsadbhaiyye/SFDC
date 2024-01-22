public class example37 {
    public static void test(){
        //Write an SOQL Query to fetch all Banking and Finance Account Records. from account object
        //CREATE THE LIST OF THE ACCOUNT OBJECT
        list<account> lst=[select name,phone,fax,industry from account where industry='Banking' and industry='finance'];
        //get the size of the record
        system.debug('the size of the reord is '+lst.size());
        //apply enhance for loop
        for(account acc:lst){
            system.debug('the record is '+acc);
        }
    }

}