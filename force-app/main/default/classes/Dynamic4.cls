public class Dynamic4 {
    public static void test(){
        //Write an apex program, to fetch all the Lead Records from the object and represent on the Debug Log File.
        //declar the variable and pass the query
        string rupesh ='select lastname,status from lead';
        //pass the reference variable to the variable
        list<lead> lst=database.query(rupesh);
        //get the size of the record 
        system.debug('the size of the record is '+lst.size());
        //apply enhance for loop
        for(lead ld:lst){
            system.debug('the record is '+ld);
        }
    }

}