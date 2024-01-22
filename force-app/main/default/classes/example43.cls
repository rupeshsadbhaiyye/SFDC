public class example43 {
    public static void test(string locationname){
        if(locationname!=null && locationname!=''){
            //Write an apex program, to fetch all the Position Records based on the specified Location Name at runtime.
            //create the list of position object
            list<position__c> lst=[select name,location__c from position__c where location__c=:locationname];
            //get the size of the record
            system.debug('the size of the record is '+lst.size());
            //apply enhance for loop
            for(position__c ps:lst){
                system.debug('the record is '+ps);
            }
        }
    }

}