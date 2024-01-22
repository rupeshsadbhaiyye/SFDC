public class sub2 {
    public static void test(){
        //Write an apex program, to Insert a Lead Record inside the Object.
        //create the object of lead class
        lead ld=new lead();
        //assign the values
        ld.LastName='TATA STEEL';
        ld.Company='Banking';
        ld.Status='Open - Not Contacted';
        ld.Phone ='7412589630';
        ld.Fax ='741';
        
        //insert the record
        insert ld;
        //get the record id
        if(ld.Id!=null){
            system.debug('the record is inserted '+ld.Id);
        }
    }

}