public class example35 {
    public static void test(){
        //Write an SOQL Query, to fetch all the Position Records whose Location is "Mumbai" and Which Not Yet Closed.
        //create the list of position object
        list<Position__c> lst=[select Name,Id,location__c,isactive__c from position__c where location__c='Pune' and isactive__c=True];
        //get the size of the record 
        system.debug('the record size is '+lst.size());
        //apply enhance loop
        for(position__c ps:lst){
            system.debug('the record is '+ps);
}
        
    }

}