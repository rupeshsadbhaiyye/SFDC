public class example11 {
    public static void test(){
        //Write an apex program, to fetch all the Case Records from the object and store them to a Map Collection and represent the records on the Debug Log File.
        //step1: create the map of case object
        map<Id,case> mp=new map<Id,case>([select Status,Priority,Origin from case]);
        //get the size of 
        system.debug('the size is '+mp.size() );
        //apply enhance for loop
        for(case cs:mp.values()){
            system.debug('the record are '+cs);
        }
}

}