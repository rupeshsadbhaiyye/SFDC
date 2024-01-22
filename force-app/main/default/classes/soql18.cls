public class soql18 {
    public static void test(){
        //skip 20 record from the account object
        //create the list of account object
        list<account> lst=[select name,phone,fax from account offset 20];
        //get the size of the record is 
        system.debug('the size of the record is '+lst.size());
        //apply enhance for loop
        for(account acc:lst){
            system.debug('the record is '+acc);
        }
    }

}