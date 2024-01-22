public class example16 {
    public static void test(){
        //Fetch the  data from contact object with map collection and static SOQL Queries
        //create the map of contact object
        map<Id,contact> mp=new map<Id,Contact>([select lastname,firstname,phone,fax from contact]);
        //GET the size of map
        system.debug('the size of map is '+mp.size());
        //apply enhance for loop
        for(contact con:mp.values()){
            system.debug('the record are '+con);
        }
    }

}