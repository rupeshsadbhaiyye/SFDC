public class example26 {
    public static void test(){
        //Write an SOQL Query to represent all the Recently Created Position Records.
        //create the list of position object
        list<Position__c> lst=[select name,createdDate from Position__c order by createdDate desc];
        //aply for lop
        for(Position__c ps:lst){
            system.debug('the record are '+ps);
        }
    }

}