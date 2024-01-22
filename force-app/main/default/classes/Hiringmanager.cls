public class Hiringmanager {
    public static void hir(){
        //create object of the hiring manager class
        hiring_manager__c hr=new hiring_manager__c();
        //assign the values 
        hr.Name ='Rajesh Yadav';
        hr.Contact_Number__c ='7412589630';
        hr.Email_Id__c ='dfdg@gmail.com';
        //insert the record 
        insert hr;
        //get the record id 
        if(hr.Id!=null){
            system.debug('the hr id is '+hr.Id);
        }
    }

}