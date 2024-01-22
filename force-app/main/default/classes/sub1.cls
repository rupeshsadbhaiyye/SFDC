public class sub1 {
    public static void test(){
        //Write an apex program, to Insert an Account Record inside the object.
        //create an object of account class
        contact con=new contact();
        //assign the values
        con.FirstName ='Narendra';
        con.lastName ='Modi';
        con.Phone ='7412589630';
        con.Fax ='147';
        //insert the record
        insert con;
        //check and get the record id
        if(con.Id!=null){
            system.debug('the record insertyed ='+con.Id);
        }
        
    }

}