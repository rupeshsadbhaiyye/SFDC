public class exampledemo6 {
    public static void harsh(){
        //craete the record inside the contact object
        contact con=new contact();
        //assign thr value
        con.LastName ='yadav sham';
        
        //insert the record 
        insert con;
        //get the record id
        if(con.Id!=null){
            system.debug('the record insertrted '+con.Id);
}
    }

}