public class example2 {
    public static void test(){
        //create record inside the lead object
        lead ld=new lead();
        //assign the values
        ld.LastName ='sales queue lead';
        ld.Company ='Banking';
        //insert the record 
        insert ld;
        //get the record id 
        if(ld.Id!=null){
            system.debug('the lead id is '+ld.Id);
}
    }

}