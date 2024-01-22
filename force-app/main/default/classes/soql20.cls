public class soql20 {
    public static void test(){
       //Write an SOQL Query to fetch only 1 Record from the Lead Object.
       // create the list of the lead of the object
       list<lead> lst=[select lastname,status from lead limit 1];
        //apply enhance for loop
        for(lead ld:lst){
            system.debug('the record are '+ld);
        }
        
    }

}