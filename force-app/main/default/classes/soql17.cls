public class soql17 {
    public static void test(){
        //Write an apex program, to fetch all the Lead REcords including Deleted Records.
        //create the list of lead object and the query
        list<lead> lst=[select lastname,firstname,isdeleted from lead all rows];
        //get the size of the record 
        system.debug('the size of the reccord is '+lst.size());
        //apply enhance for loop
        for(lead ld:lst){
            system.debug('the record are '+ld);
        }
    }

}