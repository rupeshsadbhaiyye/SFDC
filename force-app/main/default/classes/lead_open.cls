public class lead_open {
    //Write an SOQL Query, to Fetch All the Lead Records Whose Status is "Open - Not Contacted".
    public static void test(){
        list<lead> lst=[select name,status from lead where status='Open - Not Contacted'];
        system.debug('the record size is '+lst.size());
        if(!lst.isEmpty()){
            for(lead ld:lst){
                system.debug('the record are '+ld);
            }
        }
    }

}