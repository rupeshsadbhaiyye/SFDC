public class example27 {
    public static void test(){
        //Write an apex program, to fetch all the hiring_manager__c REcords including Deleted Records.
        //create the the list of hiring_manager__c
        list<Hiring_manager__c> lst=[select name,isdeleted from hiring_manager__c all rows];
        //get the size of the records 
        system.debug('the size of the records is '+lst.size());
        //apply the for loop
        for(Hiring_manager__c hr:lst){
            system.debug('the records are '+hr);
        }
    }

}