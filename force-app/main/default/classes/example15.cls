public class example15 {
    public static void test(){
       // Fetch the  data from account object with map collection and static SOQL Queries
       // create the map of account object
       map<Id,Account> mp=new map<Id,Account>([select name,phone,fax from Account]);
        //get the size of map 
        system.debug('the size of rmap is '+mp.size());
        //apply enhance for loop
        for(account acc:mp.values()){
            system.debug('the record are '+acc);
        }
        
    }

}