public class offsetclass {
    //fetch only 10 records from the account object
    public static void test(){
        list<account> lst=[select name,phone,fax from account offset 42];
        system.debug('the size of the record is '+lst.size());
        if(!lst.isEmpty()){
            for(account acc:lst){
                system.debug('the record are '+acc);
            }
        }
    }

}