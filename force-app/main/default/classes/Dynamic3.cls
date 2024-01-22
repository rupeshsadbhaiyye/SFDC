public class Dynamic3 {
    public static void test(){
        //Write an apex program, to fetch all the Contact Records from the object and represent on the Debug Log File.
        //delclare the variable and pass the query
        string contactdetail='select name,fax,phone from contact';
        //pass the variable to the reference variable
        list<contact> lst=database.query(contactdetail);
        //get the size of the record
        system.debug('the size of the record is '+lst.size());
        //apply enhance for loop
        for(contact con:lst){
            system.debug('the record is '+con);
        }
    }

}