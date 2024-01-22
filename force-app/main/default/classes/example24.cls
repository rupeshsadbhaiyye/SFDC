public class example24 {
    public static void test(){
        //Write an SOQL Query to fetch only 1 Record from the Lead Obj
        //create the list of lead object
        list<lead> lst=[select name,status from lead limit 1];
        //apply enhabce for loop
        for(lead ld:lst){
            system.debug('the record is '+ld);
        }
    }

}