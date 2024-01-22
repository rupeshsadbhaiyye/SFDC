public class example32 {
    public static void test(){
        //Write an apex program, to fetch all the Banking Account Records from the Object.
        //create the list of account object
        list<account> lst=[select name,fax,phone,industry,Rating from account where Rating=:'Hot'];
        //get the size of the record 
        system.debug('the size of the record is '+lst.size());
        //apply enhance for loop
        for(account acc:lst){
            system.debug('the record is '+acc);
        }
    }
    
}