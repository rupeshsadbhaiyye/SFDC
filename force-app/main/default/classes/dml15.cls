public class dml15 {
    public static void test(){
        //fetch all the lead object record
        //create the list of lead object record
        list<lead> lst=[select lastname,status,company,isdeleted from lead 
                         all rows];
        //get the size of the list
        system.debug('the size of the list is '+lst.size());
        //apply enhance for loop
        for(lead ld:lst){
            system.debug('the record are '+ld);
        }
    }

}