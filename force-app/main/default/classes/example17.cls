public class example17 {
    public static void test(){
        //Fetch the  data from lead object with map collection and static SOQL Queries
        //create the map of lead object 
        map<Id,Lead> mp=new map<Id,Lead>([select lastName,status,fax from lead]);
        //get the size of map
        system.debug('the size of map is '+mp.size());
        //apply enhance for loop
        for(lead ld:mp.values()){
            system.debug('the record of lead is '+ld);
        }
        
    }

}