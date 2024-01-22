public class example10 {
    public static void test(){
        //fetch all the record from college 11 object
        //step1 : create list of college11__c object
        list<college1__c> lst=[select Name,Address__c,Admission_fees__c from college1__c];
        //apply the enhance for loop to fetch the record
        for(college1__c coll:lst){
            system.debug('the record are '+coll);
        }
    }

}