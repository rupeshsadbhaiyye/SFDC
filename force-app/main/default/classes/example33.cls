public class example33 {
    public static void test(){
        //Write an SOQL Query, to Fetch All the Lead Records Whose Status is "Open - Not Contacted".
        //create the list of list object
        list<lead> lst=[select lastname,status from lead where status='Open-Not Contacted'];
        //get the size of the record
        system.debug('the size of the record is '+lst.size());
        //Enhance for loop
        for(lead ld:lst){
            system.debug('the reccord are '+ld);
        }
    }

}