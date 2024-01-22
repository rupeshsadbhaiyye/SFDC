public class example20 {
    public static void test(){
        //Fetch the  data from Opportunity object with map collection and static SOQL Queries
        //create the map of opportunity object
        map<Id,Opportunity> mp=new map<Id,Opportunity>([select name from Opportunity]);
        //get the size of the map
        system.debug('the size of opp is '+mp.size());
        //apply the enhance for loop
        for(Opportunity opp:mp.values()){
            system.debug('the record are '+mp);
        }
    }

}