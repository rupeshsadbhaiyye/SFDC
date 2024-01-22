public class Dynamic1 {
    public static void test(){
        //Write an apex program, to fetch all the Case Records from the object and represent on the Debug Log File.
        //create the list of case object 
        string dyn='select status,priority,origin from case';
        list<case> lst=database.query(dyn);
        //get the size 
        system.debug('the size of the record is '+lst.size());
        //apply enhance for loop
        for(case cs:lst){
            system.debug('the record is '+cs);
        }

    }

}