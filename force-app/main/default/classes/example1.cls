public class example1 {
    public static void rupesh(){
        //create the record inside the contact object
        contact con=new contact();
        //assign the values
        con.LastName ='Rahul';
        //insert the record
        insert con;
        //get the record id
        if(con.Id!=null){
            system.debug('the record id is '+con.Id);
        }
}

}