public class Dyanamic6 {
    public static void test(){
        //Write an apex program, to fetch all the Position Records from the object and represent on the Debug Log File
        //declare the variable and pass the query
        string pssii='select name,Location__c,country__c from position__c';
        //pass the referense variable to the variable
        list<position__c> lst=database.query(pssii);
        //get the size of the record
        system.debug('the size of the record is '+lst.size());
        //apply enhance for loop
        for(position__c ps:lst){
            system.debug('the record are '+ps);
        }
    }

}