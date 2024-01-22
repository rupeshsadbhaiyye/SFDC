public class soql23 {
    public static void test(){
        //apply offest clause
        //create the list of account object
        list<account> lst=[select name,phone,fax from account offset 10];
        //get the size of the list
        system.debug('the size of the record is '+lst.size());
        //apply enhance for loop
        for(account acc:lst){
            system.debug('the record are '+acc);
        }
    }

}