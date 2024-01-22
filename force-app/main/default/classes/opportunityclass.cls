public class opportunityclass {
    public static void test(){
        //create the record inside the opportunity object
        opportunity opp=new opportunity();
        //assign the values inside the record 
        opp.CloseDate=date.parse('12/27/1997');
        opp.Name ='get an instant job';
        opp.StageName ='Prospecting';
        //insert the id
        insert opp;
        //get the record id 
        if(opp.Id!=null){
            system.debug('the record id is '+opp.Id);
        }
    }

}