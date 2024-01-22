public class example18 {
    public static void test(){
        //Fetch the  data from Hiring manager object with map collection and static SOQL Queries
        //create the map of hiring manager object 
        map<Id,hiring_manager__c> mp=new map<Id,hiring_manager__c>
            ([select name,Contact_Number__c,Email_Id__c,Location__c,Position__c from Hiring_manager__c]);
        //get the size of the map
        system.debug('the size of map is '+mp.size());
        //apply enhance for loop
        for(Hiring_manager__c hr:mp.values()){
            system.debug('the record are '+hr);
        }
    }

}