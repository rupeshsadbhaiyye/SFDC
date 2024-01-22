public class example30 {
    public static void test(){
        //fetch account record with the help of offset clause
        //create the list of account object'
        list<account> lst=[select name,fax,phone from account offset 15];
        //get the size of the record 
        system.debug('the record is '+lst.size());
        //apply enhance for loop
        for(account acc:lst){
            system.debug('the record are '+lst);
        }
    }

}