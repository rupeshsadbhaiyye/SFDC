public class example29 {
    public static void test(){
        //Write an apex program, to fetch all the Lead REcords including Deleted Records.
        //create the list of lead object 
        list<lead> lst=[select Lastname,fax,isdeleted from lead all rows];
        //get the size of the records
        system.debug('the records size is '+lst.size());
        //apply enhance for loop
        for(lead ld:lst){
            system.debug('the records are '+ld);
        }
    }

}