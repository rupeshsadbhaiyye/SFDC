public class exapmle14 {
    public static void test(){
        //Write an apex program, to fetch all the Case Records from the object and store them to a Map Collection and represent the records on the Debug Log File.
        //create the map of the case object
        map<Id,Case> mp=new map<Id,case>([select Status,Priority,Origin from case]);
        //get the size of map
        system.debug('the size of map is '+mp.size());
        //apply the for loop
        for(case cs:mp.values()){  
            system.debug('the record are '+cs);
        }
    }

}