public class soql14 {
    public static void test(){
        //Fetch the  data from lead object with map collection and static SOQL Queries
        //create the map of the lead object and add the query
        map<id,lead> mp=new map<id,lead>([select lastname,firstname,status from lead]);
        //get the size of the record
        system.debug('the size of the record is '+mp.size());
        //apply enhance for loop
        for(lead ld:mp.values()){
            system.debug('the record are '+ld);
        }

    }

}