public class soql15 {
    public static void test(){
        //Write an SOQL Query to fetch 10 Account Records from the Object.
        //create the list of account object
        list<account> lst=[select name,phone,fax from account limit 10];
        //get the size of the record
        system.debug('the size of the record is '+lst.size());
        //apply enahance for loop
        for(account acc:lst){
            system.debug('the record is '+acc);
        }
            
    }

}