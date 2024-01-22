public class example3 {
    public static void hr(){
        //bulkification process
        //create list of hiring manager object
        list<hiring_manager__c> lst=new list<hiring_manager__c>();
        //apply simple for loop
        for(integer counter=1;counter<=50;counter++){
            //create the object of hiring manager class
            hiring_manager__c hr=new hiring_manager__c();
            //assign the values
            hr.Name ='Kshor Shrawne';
            hr.Contact_Number__c ='74125896330';
            hr.Email_Id__c ='kjd2@gmail.com';
            //apply the collection 
            lst.add(hr);
            
        }
        if(!lst.isEmpty()){
            insert lst;
            system.debug('the record id of hr is '+lst);
        }
    }

}