public class soql13 {
    public static void test(){
        //Write an apex program, to fetch all the Case Records from the object 
        //and store them to a Map Collection and represent the records on the Debug Log File.
        //create the map of contact object and add the query
        map<id, contact> mp=new map<id,contact>([select id,lastname,firstname from contact]);
        //get the size
        system.debug('the size of the record is '+mp.size());
        //apply enhance for loop
        for(contact con:mp.values()){
            system.debug('the record is '+con);
        }
       
    }

}