public class example42 {
    public static void test(){
        //Write an apex program, to fetch all the Lead Records based on the Specified Lead Status.
            //create the list of lead object
            list<lead> lst=[select lastname,status from lead where status=:'Open - Not Contacted'];
            //get the size of the record 
            system.debug('the size of the record is '+lst.size());
            //apply enhance for loop
            for(lead ld:lst){
                system.debug('the record are '+ld);
            
        }
    }
}